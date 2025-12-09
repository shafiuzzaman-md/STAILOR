#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlRegexpPtr comp;
    xmlRegExecCtxtPtr exec;

    comp = xmlRegNewParserCtxt(NULL);
    if (comp == NULL) {
        return 0;
    }

    klee_make_symbolic(&comp->nbCounters, sizeof(comp->nbCounters), "nbCounters");
    klee_assume(comp->nbCounters >= 0);
    klee_assume(comp->nbCounters <= 1000);

    exec = xmlRegNewExecCtxt(comp, NULL, NULL);
    if (exec == NULL) {
        xmlRegFreeParserCtxt(comp);
        return 0;
    }

    if (exec->counts != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlRegFreeExecCtxt(exec);
    xmlRegFreeParserCtxt(comp);
    return 0;
}