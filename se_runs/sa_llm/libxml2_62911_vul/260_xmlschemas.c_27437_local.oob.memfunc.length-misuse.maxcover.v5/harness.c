#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr parserCtxt;
    xmlSchemaPtr schema;
    xmlSchemaValidCtxtPtr validCtxt;

    // Create a symbolic schema document
    char xmlData[1024];
    klee_make_symbolic(xmlData, sizeof(xmlData), "xmlData");
    // Ensure null termination for safety
    xmlData[sizeof(xmlData)-1] = 0;

    parserCtxt = xmlSchemaNewMemParserCtxt(xmlData, sizeof(xmlData)-1);
    if (parserCtxt == NULL) {
        return 0;
    }

    schema = xmlSchemaParse(parserCtxt);
    xmlSchemaFreeParserCtxt(parserCtxt);
    if (schema == NULL) {
        return 0;
    }

    // This call should reach xmlSchemaNewValidCtxt at line 27437
    validCtxt = xmlSchemaNewValidCtxt(schema);
    if (validCtxt == NULL) {
        xmlSchemaFree(schema);
        return 0;
    }

    // Mark reachability of the memset at line 27437
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlSchemaFreeValidCtxt(validCtxt);
    xmlSchemaFree(schema);
    return 0;
}