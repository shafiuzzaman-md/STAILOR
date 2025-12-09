#include <libxml/xmlschemas.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlSchemaWildcardPtr wildcard;
    xmlNodePtr node;
    int type;

    ctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&type, sizeof(type), "type");
    klee_make_symbolic(&node, sizeof(node), "node");

    wildcard = xmlSchemaNewWildcard(ctxt, type, node);
    if (wildcard != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlSchemaFreeParserCtxt(ctxt);
    return 0;
}