#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    xmlRegParserCtxtPtr ctxt;
    xmlRegStatePtr state;

    ctxt = xmlRegNewParserCtxt(NULL);
    if (ctxt == NULL) {
        return 0;
    }

    state = xmlRegNewState(ctxt);
    if (state != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlRegFreeParserCtxt(ctxt);
    return 0;
}