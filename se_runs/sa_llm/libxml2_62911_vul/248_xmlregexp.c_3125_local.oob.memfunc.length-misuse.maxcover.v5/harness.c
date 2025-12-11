#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

typedef struct _xmlRegExecCtxt xmlRegExecCtxt;
typedef xmlRegExecCtxt *xmlRegExecCtxtPtr;

typedef struct _xmlRegexp xmlRegexp;
typedef xmlRegexp *xmlRegexpPtr;

typedef struct _xmlRegRollback xmlRegRollback;

struct _xmlRegExecCtxt {
    int *counts;
    xmlRegRollback *rollbacks;
    int nbRollbacks;
    int status;
    void *comp;
};

struct _xmlRegRollback {
    int *counts;
};

struct _xmlRegexp {
    int nbCounters;
};

void xmlRegexpExecSave(xmlRegExecCtxtPtr exec) {
    if (exec->counts) {
        xmlRegexpPtr comp = (xmlRegexpPtr)exec->comp;
        memcpy(exec->counts, exec->rollbacks[exec->nbRollbacks].counts,
               comp->nbCounters * sizeof(int));
        
        SAILR_ASSERT(exec->rollbacks[exec->nbRollbacks].counts != NULL);
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
}

xmlRegexpPtr xmlRegexpCompile(const char *regexp) {
    xmlRegexpPtr ret;
    ret = (xmlRegexpPtr)malloc(sizeof(xmlRegexp));
    if (ret == NULL) return NULL;
    
    klee_make_symbolic(&ret->nbCounters, sizeof(ret->nbCounters), "nbCounters");
    klee_assume(ret->nbCounters >= 0);
    klee_assume(ret->nbCounters <= 100);
    
    return ret;
}

int main(void) {
    xmlRegExecCtxt exec;
    xmlRegexpPtr comp;
    
    comp = xmlRegexpCompile("test");
    if (comp == NULL) return 0;
    
    exec.comp = comp;
    exec.nbRollbacks = 0;
    
    klee_make_symbolic(&exec.status, sizeof(exec.status), "status");
    
    exec.rollbacks = (xmlRegRollback*)malloc(sizeof(xmlRegRollback));
    if (exec.rollbacks == NULL) return 0;
    
    exec.rollbacks[0].counts = (int*)malloc(comp->nbCounters * sizeof(int));
    if (exec.rollbacks[0].counts == NULL) return 0;
    
    exec.counts = (int*)malloc(comp->nbCounters * sizeof(int));
    if (exec.counts == NULL) return 0;
    
    xmlRegexpExecSave(&exec);
    
    free(exec.rollbacks[0].counts);
    free(exec.rollbacks);
    free(exec.counts);
    free(comp);
    
    return 0;
}