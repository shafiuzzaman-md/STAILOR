#include "klee/klee.h"
#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>

int main(void) {
    xmlRegParserCtxtPtr ctxt;
    xmlRegexpPtr regexp;

    ctxt = xmlRegNewParserCtxt(NULL);
    if (ctxt == NULL) {
        return 0;
    }

    klee_make_symbolic(&ctxt->string, sizeof(ctxt->string), "ctxt_string");
    klee_make_symbolic(&ctxt->nbStates, sizeof(ctxt->nbStates), "ctxt_nbStates");
    klee_make_symbolic(&ctxt->states, sizeof(ctxt->states), "ctxt_states");
    klee_make_symbolic(&ctxt->nbAtoms, sizeof(ctxt->nbAtoms), "ctxt_nbAtoms");
    klee_make_symbolic(&ctxt->atoms, sizeof(ctxt->atoms), "ctxt_atoms");
    klee_make_symbolic(&ctxt->nbCounters, sizeof(ctxt->nbCounters), "ctxt_nbCounters");
    klee_make_symbolic(&ctxt->counters, sizeof(ctxt->counters), "ctxt_counters");
    klee_make_symbolic(&ctxt->determinist, sizeof(ctxt->determinist), "ctxt_determinist");

    regexp = xmlRegEpxFromParse(ctxt);
    if (regexp != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlRegFreeRegexp(regexp);
    }

    xmlRegFreeParserCtxt(ctxt);
    return 0;
}