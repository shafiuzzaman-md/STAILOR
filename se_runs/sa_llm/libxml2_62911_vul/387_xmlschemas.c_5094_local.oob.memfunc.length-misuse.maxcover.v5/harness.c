#include "klee/klee.h"
#include <libxml/xmlschemas.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <string.h>

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlSchemaPtr schema;
    const xmlChar *name;
    const xmlChar *nsName;

    ctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (ctxt == NULL) {
        return 0;
    }

    schema = xmlSchemaParse(ctxt);
    if (schema == NULL) {
        xmlSchemaFreeParserCtxt(ctxt);
        return 0;
    }

    name = (const xmlChar *)"notationName";
    nsName = (const xmlChar *)"http://example.com/ns";

    xmlSchemaNotationPtr notation = xmlSchemaAddNotation(ctxt, schema, name, nsName, NULL);
    if (notation != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlSchemaFree(schema);
    xmlSchemaFreeParserCtxt(ctxt);
    return 0;
}