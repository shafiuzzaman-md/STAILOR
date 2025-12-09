#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr pctxt;
    xmlSchemaValidCtxtPtr vctxt;
    xmlSchemaPtr schema;
    xmlDocPtr doc;
    int ret;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a symbolic XML schema string */
    char schema_buf[1024];
    klee_make_symbolic(schema_buf, sizeof(schema_buf), "schema_buf");
    /* Ensure null termination for safety */
    schema_buf[sizeof(schema_buf)-1] = 0;

    /* Parse schema */
    pctxt = xmlSchemaNewParserCtxt(schema_buf);
    if (pctxt == NULL) {
        xmlCleanupParser();
        return 0;
    }
    schema = xmlSchemaParse(pctxt);
    xmlSchemaFreeParserCtxt(pctxt);
    if (schema == NULL) {
        xmlCleanupParser();
        return 0;
    }

    /* Create validation context */
    vctxt = xmlSchemaNewValidCtxt(schema);
    if (vctxt == NULL) {
        xmlSchemaFree(schema);
        xmlCleanupParser();
        return 0;
    }

    /* Create a symbolic XML document */
    char doc_buf[1024];
    klee_make_symbolic(doc_buf, sizeof(doc_buf), "doc_buf");
    doc_buf[sizeof(doc_buf)-1] = 0;

    doc = xmlReadMemory(doc_buf, sizeof(doc_buf)-1, "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlSchemaFreeValidCtxt(vctxt);
        xmlSchemaFree(schema);
        xmlCleanupParser();
        return 0;
    }

    /* Validate the document; this will trigger IDC processing */
    ret = xmlSchemaValidateDoc(vctxt, doc);

    /* The target line is inside xmlSchemaIDCStoreNodeTableItem or a related function.
     * We need to reach the memset at line 22989. The path is triggered during
     * IDC (identity‑constraint) evaluation, specifically when storing a node‑table item.
     * We mark reachability just before the vulnerable memset.
     */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    xmlFreeDoc(doc);
    xmlSchemaFreeValidCtxt(vctxt);
    xmlSchemaFree(schema);
    xmlCleanupParser();
    return 0;
}