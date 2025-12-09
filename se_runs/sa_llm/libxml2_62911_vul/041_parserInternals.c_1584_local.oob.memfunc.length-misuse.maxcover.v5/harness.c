#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/parserInternals.h>

int main(void) {
    xmlParserCtxtPtr ctxt;
    xmlParserInputPtr input;

    ctxt = xmlCreateMemoryParserCtxt("", 0);
    if (ctxt == NULL) {
        return 0;
    }

    input = xmlNewInputStream(ctxt);
    if (input != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlFreeParserCtxt(ctxt);
    return 0;
}