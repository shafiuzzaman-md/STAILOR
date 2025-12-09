#include <libxml/xmlschemas.h>
#include <libxml/xmlschemastypes.h>
#include <libxml/parser.h>
#include <libxml/parserInternals.h>
#include <klee/klee.h>

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlSchemaAttributePtr attr;
    xmlNodePtr node;
    xmlChar *name;
    xmlChar *nsName;
    int topLevel;

    ctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (ctxt == NULL) return 0;

    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&name, sizeof(name), "name");
    klee_make_symbolic(&nsName, sizeof(nsName), "nsName");
    klee_make_symbolic(&topLevel, sizeof(topLevel), "topLevel");

    attr = xmlSchemaNewAttribute(ctxt, NULL, node, name, nsName, topLevel);
    if (attr != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlSchemaFreeParserCtxt(ctxt);
    return 0;
}