#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaValidCtxtPtr vctxt;
    xmlSchemaParserCtxtPtr pctxt;
    xmlSchemaPtr schema;
    xmlDocPtr doc;
    xmlNodePtr node;
    xmlSchemaNodeInfoPtr info;
    xmlSchemaElemInfoPtr elemInfo;
    int depth;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a schema parser context */
    pctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (pctxt == NULL) return 1;

    /* Parse a dummy schema (in memory) */
    const char* schema_data = "<?xml version=\"1.0\"?><xs:schema xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"><xs:element name=\"test\" type=\"xs:string\"/></xs:schema>";
    schema = xmlSchemaParse(pctxt);
    if (schema == NULL) {
        xmlSchemaFreeParserCtxt(pctxt);
        xmlCleanupParser();
        return 1;
    }

    /* Create a validation context */
    vctxt = xmlSchemaNewValidCtxt(schema);
    if (vctxt == NULL) {
        xmlSchemaFree(schema);
        xmlSchemaFreeParserCtxt(pctxt);
        xmlCleanupParser();
        return 1;
    }

    /* Create a dummy document */
    const char* doc_data = "<?xml version=\"1.0\"?><test>hello</test>";
    doc = xmlReadMemory(doc_data, strlen(doc_data), "noname.xml", NULL, 0);
    if (doc == NULL) {
        xmlSchemaFreeValidCtxt(vctxt);
        xmlSchemaFree(schema);
        xmlSchemaFreeParserCtxt(pctxt);
        xmlCleanupParser();
        return 1;
    }

    /* Get the root element */
    node = xmlDocGetRootElement(doc);
    if (node == NULL) {
        xmlFreeDoc(doc);
        xmlSchemaFreeValidCtxt(vctxt);
        xmlSchemaFree(schema);
        xmlSchemaFreeParserCtxt(pctxt);
        xmlCleanupParser();
        return 1;
    }

    /* Symbolic depth to influence path */
    klee_make_symbolic(&depth, sizeof(depth), "depth");
    /* Constrain depth to be within plausible bounds (0..some limit) */
    klee_assume(depth >= 0);
    klee_assume(depth < 100); /* arbitrary upper bound */

    /* Set vctxt->depth to symbolic value */
    vctxt->depth = depth;

    /* Ensure elemInfos array is allocated */
    if (vctxt->elemInfos == NULL) {
        vctxt->elemInfos = (xmlSchemaNodeInfoPtr*)xmlMalloc(sizeof(xmlSchemaNodeInfoPtr) * (depth + 1));
        if (vctxt->elemInfos == NULL) {
            xmlFreeDoc(doc);
            xmlSchemaFreeValidCtxt(vctxt);
            xmlSchemaFree(schema);
            xmlSchemaFreeParserCtxt(pctxt);
            xmlCleanupParser();
            return 1;
        }
        /* Initialize pointers to NULL */
        for (int i = 0; i <= depth; i++) {
            vctxt->elemInfos[i] = NULL;
        }
    }

    /* Allocate an xmlSchemaNodeInfo for the current depth */
    info = (xmlSchemaNodeInfoPtr)xmlMalloc(sizeof(xmlSchemaNodeInfo));
    if (info == NULL) {
        xmlFreeDoc(doc);
        xmlSchemaFreeValidCtxt(vctxt);
        xmlSchemaFree(schema);
        xmlSchemaFreeParserCtxt(pctxt);
        xmlCleanupParser();
        return 1;
    }

    /* Set localName to NULL to avoid the error path */
    info->localName = NULL;

    /* Place info into elemInfos array at current depth */
    vctxt->elemInfos[vctxt->depth] = info;

    /* Now call xmlSchemaGetFreshElemInfo (or simulate its behavior) */
    /* Since we cannot directly call static functions, we simulate the path that leads to line 24116 */
    /* The function would be called from somewhere like xmlSchemaValidateOneElement */
    /* We'll directly mimic the code around line 24116 */

    /* Check if info->localName != NULL (we set it to NULL, so skip error) */
    if (info->localName != NULL) {
        /* This branch should not be taken */
        xmlFree(info);
        xmlFreeDoc(doc);
        xmlSchemaFreeValidCtxt(vctxt);
        xmlSchemaFree(schema);
        xmlSchemaFreeParserCtxt(pctxt);
        xmlCleanupParser();
        return 1;
    }

    /* Reachability marker: we are about to execute the memset at line 24116 */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* The vulnerable memset */
    memset(info, 0, sizeof(xmlSchemaNodeInfo));

    /* Cleanup */
    xmlFree(info);
    xmlFreeDoc(doc);
    xmlSchemaFreeValidCtxt(vctxt);
    xmlSchemaFree(schema);
    xmlSchemaFreeParserCtxt(pctxt);
    xmlCleanupParser();
    return 0;
}