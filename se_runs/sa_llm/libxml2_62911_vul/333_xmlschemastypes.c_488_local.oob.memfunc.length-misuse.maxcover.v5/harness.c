#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/xmlmemory.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr pctxt;
    xmlSchemaTypePtr type;
    xmlSchemaPtr schema;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a schema parser context */
    pctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (pctxt == NULL) {
        goto cleanup;
    }

    /* Create a schema structure */
    schema = xmlSchemaNewMemParserCtxt("", 0);
    if (schema == NULL) {
        goto cleanup;
    }

    /* Make the schema available in the parser context */
    pctxt->schema = schema;

    /* Call the target function */
    xmlSchemaInitTypes(pctxt);

    /* Place reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");

cleanup:
    if (schema != NULL) {
        xmlSchemaFree(schema);
    }
    if (pctxt != NULL) {
        xmlSchemaFreeParserCtxt(pctxt);
    }
    xmlCleanupParser();
    return 0;
}