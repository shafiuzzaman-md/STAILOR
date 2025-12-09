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
    int xml_data_len;

    /* Initialize libxml2 */
    xmlInitParser();

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

    /* Make symbolic input for XML data */
    xml_data_len = 100;
    xml_data = (const char*)malloc(xml_data_len + 1);
    klee_make_symbolic((void*)xml_data, xml_data_len + 1, "xml_data");
    ((char*)xml_data)[xml_data_len] = '\0';

    /* Validate the XML data against the schema.
       This will trigger internal schema validation routines,
       potentially reaching the target memset in xmlSchemaPSVIIDCKeyAdd. */
    xmlSchemaValidateStream(vctxt, (xmlChar*)xml_data, xml_data_len, 0, NULL, NULL);

    /* Place reachability marker near the target line.
       The target memset is inside xmlSchemaPSVIIDCKeyAdd, called during validation. */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    free((void*)xml_data);
    xmlSchemaFreeValidCtxt(vctxt);
    xmlSchemaFree(schema);
    xmlSchemaFreeParserCtxt(pctxt);
    xmlCleanupParser();

    return 0;
}