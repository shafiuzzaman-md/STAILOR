#include <libxml/xmlschemas.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlChar *name;
    xmlChar *nsName;
    xmlNodePtr node;
    int topLevel;

    ctxt = xmlSchemaNewParserCtxt("test.xsd");
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&name, sizeof(name), "name");
    klee_make_symbolic(&nsName, sizeof(nsName), "nsName");
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&topLevel, sizeof(topLevel), "topLevel");

    if (name != NULL) {
        klee_assume(name != NULL);
    }
    if (nsName != NULL) {
        klee_assume(nsName != NULL);
    }
    if (node != NULL) {
        klee_assume(node != NULL);
    }

    xmlSchemaElementPtr ret = xmlSchemaNewElement(ctxt, name, nsName, node, topLevel);
    if (ret != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    if (ctxt != NULL) {
        xmlSchemaFreeParserCtxt(ctxt);
    }
    return 0;
}