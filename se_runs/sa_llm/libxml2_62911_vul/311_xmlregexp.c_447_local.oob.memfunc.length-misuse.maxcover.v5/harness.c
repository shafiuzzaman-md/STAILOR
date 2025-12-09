#include <libxml/xmlregexp.h>
#include <klee/klee.h>
#include <stddef.h>

int main(void) {
    xmlRegParserCtxtPtr ctxt;
    xmlRegexpPtr regexp;

    ctxt = xmlRegNewParserCtxt(NULL, NULL);
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&ctxt->dim, sizeof(ctxt->dim), "dim");
    klee_make_symbolic(&ctxt->nbStates, sizeof(ctxt->nbStates), "nbStates");
    klee_make_symbolic(&ctxt->elemSize, sizeof(ctxt->elemSize), "elemSize");

    ctxt->dim = klee_range(0, 1024, "dim_range");
    ctxt->nbStates = klee_range(0, 1024, "nbStates_range");
    ctxt->elemSize = klee_range(0, 1024, "elemSize_range");

    regexp = xmlRegEpxFromParse(ctxt);
    if (regexp != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlRegFreeParserCtxt(ctxt);
    return 0;
}