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
    if (comp->nbCounters > 0) {
        exec = xmlRegNewExecCtxt(comp, NULL, NULL);
        if (exec == NULL) {
            xmlRegFreeParserCtxt(comp);
            return 0;
        }
        exec->inputStack = NULL;
        exec->inputStackMax = 0;
        exec->counts = (int *) xmlMalloc(comp->nbCounters * sizeof(int));
        if (exec->counts == NULL) {
            xmlRegFreeExecCtxt(exec);
            xmlRegFreeParserCtxt(comp);
            return 0;
        }
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memset(exec->counts, 0, comp->nbCounters * sizeof(int));
        xmlRegFreeExecCtxt(exec);
    }
    xmlRegFreeParserCtxt(comp);
    return 0;
}