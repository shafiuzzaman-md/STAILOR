#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlSchemaPtr schema;

    ctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(ctxt, sizeof(xmlSchemaParserCtxt), "ctxt");

    schema = xmlSchemaNewSchema(ctxt);
    if (schema != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    if (ctxt != NULL) {
        xmlSchemaFreeParserCtxt(ctxt);
    }
    if (schema != NULL) {
        xmlSchemaFree(schema);
    }

    return 0;
}