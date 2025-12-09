#include "klee/klee.h"
#include <libxml/tree.h>
#include <libxml/parser.h>
#include <string.h>

int main(void) {
    xmlDOMWrapCtxtPtr ctxt;

    ctxt = xmlDOMWrapNewCtxt();
    if (ctxt != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlDOMWrapFreeCtxt(ctxt);
    }

    return 0;
}