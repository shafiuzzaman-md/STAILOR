#include "klee/klee.h"
#include <libxml/xmlschemas.h>
#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <string.h>
#include <stdlib.h>

extern void SAILR_ASSERT(int condition);

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlSchemaPtr schema;
    const char* xmlData;
    size_t xmlSize;
    int parseOptions = 0;

    xmlData = "<schema xmlns='http://www.w3.org/2001/XMLSchema'></schema>";
    xmlSize = strlen(xmlData);

    ctxt = xmlSchemaNewParserCtxt(NULL);
    if (ctxt == NULL) {
        return 0;
    }

    xmlSchemaSetParserErrors(ctxt, NULL, NULL, NULL);

    schema = xmlSchemaParse(ctxt);
    if (schema == NULL) {
        xmlSchemaFreeParserCtxt(ctxt);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlSchemaFree(schema);
    xmlSchemaFreeParserCtxt(ctxt);
    return 0;
}