#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlSchemaPtr schema;
    const char* schema_data;
    int schema_len;

    /* Make symbolic inputs for schema data and length */
    schema_len = klee_range(1, 1024, "schema_len");
    schema_data = (const char*)malloc(schema_len + 1);
    klee_make_symbolic((void*)schema_data, schema_len + 1, "schema_data");
    /* Ensure null termination for safety */
    ((char*)schema_data)[schema_len] = 0;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create schema parser context from memory */
    ctxt = xmlSchemaNewParserCtxt(schema_data);
    if (ctxt == NULL) {
        free((void*)schema_data);
        xmlCleanupParser();
        return 0;
    }

    /* Parse schema - this will internally call xmlSchemaInitTypes,
       which may call the function containing the target line */
    schema = xmlSchemaParse(ctxt);
    
    /* If we reach the target line, the memset at line 379 is executed.
       Place reachability marker. */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    if (schema != NULL) {
        xmlSchemaFree(schema);
    }
    xmlSchemaFreeParserCtxt(ctxt);
    free((void*)schema_data);
    xmlCleanupParser();
    return 0;
}