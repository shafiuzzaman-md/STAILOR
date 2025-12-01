#include <klee/klee.h>
#include "SAX2.c"
#include "parser.h"
#include "tree.h"

int main() {
    xmlParserCtxtPtr ctxt;
    xmlChar localname[16];
    xmlChar prefix[16];
    xmlChar value[32];
    xmlChar valueend[32];

    klee_make_symbolic(localname, sizeof(localname), "localname");
    klee_make_symbolic(prefix, sizeof(prefix), "prefix");
    klee_make_symbolic(value, sizeof(value), "value");
    klee_make_symbolic(valueend, sizeof(valueend), "valueend");

    ctxt = xmlCreateParserCtxt();
    if (ctxt == NULL) {
        return 0;
    }

    xmlSAX2AttributeNs(ctxt, localname, prefix, value, valueend);

    xmlFreeParserCtxt(ctxt);
    return 0;
}