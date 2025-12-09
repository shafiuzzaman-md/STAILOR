#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaValidCtxtPtr vctxt;
    xmlSchemaParserCtxtPtr pctxt;
    xmlSchemaPtr schema = NULL;
    const char* xml_data;
    size_t xml_size;
    xmlDocPtr doc;

    /* Initialize libxml2 */
    xmlInitParser();
    LIBXML_TEST_VERSION

    /* Create a schema parser context */
    pctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (pctxt == NULL) {
        return 0;
    }

    /* Parse the schema */
    schema = xmlSchemaParse(pctxt);
    if (schema == NULL) {
        xmlSchemaFreeParserCtxt(pctxt);
        return 0;
    }

    /* Create a validation context */
    vctxt = xmlSchemaNewValidCtxt(schema);
    if (vctxt == NULL) {
        xmlSchemaFree(schema);
        xmlSchemaFreeParserCtxt(pctxt);
        return 0;
    }

    /* Make symbolic XML data */
    xml_size = 1024;
    xml_data = (char*)malloc(xml_size);
    klee_make_symbolic((void*)xml_data, xml_size, "xml_data");
    /* Ensure null-termination for safety */
    ((char*)xml_data)[xml_size - 1] = 0;

    /* Parse XML document from memory */
    doc = xmlReadMemory(xml_data, xml_size - 1, "noname.xml", NULL, 0);
    if (doc == NULL) {
        free((void*)xml_data);
        xmlSchemaFreeValidCtxt(vctxt);
        xmlSchemaFree(schema);
        xmlSchemaFreeParserCtxt(pctxt);
        return 0;
    }

    /* Validate the document - this will trigger the IDC processing */
    xmlSchemaValidateDoc(vctxt, doc);

    /* The target line is inside xmlSchemaValidateDoc -> ... -> xmlSchemaIDCProcessMatcher */
    /* We place a reachability assertion to indicate we want to reach the target line */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    xmlFreeDoc(doc);
    free((void*)xml_data);
    xmlSchemaFreeValidCtxt(vctxt);
    xmlSchemaFree(schema);
    xmlSchemaFreeParserCtxt(pctxt);
    xmlCleanupParser();

    return 0;
}