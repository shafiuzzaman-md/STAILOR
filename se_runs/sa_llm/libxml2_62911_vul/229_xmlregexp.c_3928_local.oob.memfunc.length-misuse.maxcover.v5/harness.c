#include "klee/klee.h"
#include <libxml/xmlregexp.h>
#include <libxml/xmlmemory.h>
#include <string.h>

int main(void) {
    xmlRegexpPtr comp;
    xmlRegExecCtxtPtr exec;
    xmlChar *value;
    int nbCounters;
    int *counts;
    int *errCounts;

    comp = xmlRegexpNew("a*b");
    if (comp == NULL) return 0;

    exec = xmlRegNewExecCtxt(comp, NULL, NULL);
    if (exec == NULL) {
        xmlRegFreeRegexp(comp);
        return 0;
    }

    nbCounters = comp->nbCounters;
    if (nbCounters > 0) {
        counts = (int *)xmlMalloc(nbCounters * sizeof(int));
        errCounts = (int *)xmlMalloc(nbCounters * sizeof(int));
        if (counts == NULL || errCounts == NULL) {
            if (counts) xmlFree(counts);
            if (errCounts) xmlFree(errCounts);
            xmlRegFreeExecCtxt(exec);
            xmlRegFreeRegexp(comp);
            return 0;
        }
        exec->counts = counts;
        exec->errCounts = errCounts;
    } else {
        exec->counts = NULL;
        exec->errCounts = NULL;
    }

    value = (xmlChar *)xmlMalloc(10);
    if (value == NULL) {
        if (exec->counts) xmlFree(exec->counts);
        if (exec->errCounts) xmlFree(exec->errCounts);
        xmlRegFreeExecCtxt(exec);
        xmlRegFreeRegexp(comp);
        return 0;
    }
    klee_make_symbolic(value, 10, "value");
    value[9] = '\0';

    exec->errString = NULL;
    exec->errState = 0;
    exec->state = 0;
    exec->comp = comp;
    exec->transno = 0;
    exec->inputStack = NULL;
    exec->inputStackNr = 0;
    exec->index = 0;

    if (exec->errString != NULL)
        xmlFree(exec->errString);
    exec->errString = xmlStrdup(value);
    exec->errState = exec->state;

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memcpy(exec->errCounts, exec->counts,
           exec->comp->nbCounters * sizeof(int));

    if (exec->errString) xmlFree(exec->errString);
    if (exec->counts) xmlFree(exec->counts);
    if (exec->errCounts) xmlFree(exec->errCounts);
    xmlRegFreeExecCtxt(exec);
    xmlRegFreeRegexp(comp);
    xmlFree(value);
    return 0;
}