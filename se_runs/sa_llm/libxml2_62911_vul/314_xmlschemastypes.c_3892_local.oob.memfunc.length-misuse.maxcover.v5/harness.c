#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr parserCtxt;
    xmlSchemaPtr schema = NULL;
    xmlSchemaValPtr val = NULL;
    xmlSchemaValPtr dup = NULL;

    // Initialize libxml2
    xmlInitParser();

    // Create a symbolic schema context to reach xmlSchemaDupVal
    // We'll create a minimal schema document in memory.
    char schemaDoc[] = "<?xml version=\"1.0\"?>\n"
                       "<xs:schema xmlns:xs=\"http://www.w3.org/2001/XMLSchema\">\n"
                       "  <xs:element name=\"root\" type=\"xs:string\"/>\n"
                       "</xs:schema>";
    parserCtxt = xmlSchemaNewMemParserCtxt(schemaDoc, strlen(schemaDoc));
    if (parserCtxt == NULL) {
        xmlCleanupParser();
        return 0;
    }

    schema = xmlSchemaParse(parserCtxt);
    xmlSchemaFreeParserCtxt(parserCtxt);
    if (schema == NULL) {
        xmlCleanupParser();
        return 0;
    }

    // Create a symbolic value to be duplicated.
    // We'll use a simple string type value.
    val = xmlSchemaNewStringValue(XML_SCHEMAS_STRING, (xmlChar*)"test");
    if (val == NULL) {
        xmlSchemaFree(schema);
        xmlCleanupParser();
        return 0;
    }

    // Now call xmlSchemaDupVal, which is static, so we cannot call it directly.
    // Instead, we need to trigger a code path that calls it.
    // xmlSchemaCopyValue is a public function that calls xmlSchemaDupVal.
    dup = xmlSchemaCopyValue(val);
    if (dup != NULL) {
        // Place reachability marker: we have reached the target line.
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlSchemaFreeValue(dup);
    }

    // Cleanup
    xmlSchemaFreeValue(val);
    xmlSchemaFree(schema);
    xmlCleanupParser();
    return 0;
}