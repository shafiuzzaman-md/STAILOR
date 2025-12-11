#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed from libxml2 */
typedef struct _xmlRegExecRollback {
    void* state;
    int index;
    int nextbranch;
} xmlRegExecRollback;

typedef struct _xmlRegExecCtxt {
    int status;
    xmlRegExecRollback* rollbacks;
    int nbRollbacks;
    int maxRollbacks;
    void* state;
    int index;
    int transno;
    struct {
        int nbCounters;
    }* comp;
} xmlRegExecCtxt;

/* Stub for xmlRegexpCompile - not actually called in this path */
void xmlRegexpCompile(void) {
    /* Empty stub */
}

/* Function that contains the vulnerable memset call */
void target_function(xmlRegExecCtxt* exec, int len) {
    xmlRegExecRollback* tmp;
    
    if (exec->rollbacks == NULL) {
        exec->status = 1; /* XML_REGEXP_OUT_OF_MEMORY */
        return;
    }
    
    exec->rollbacks = tmp;
    tmp = &exec->rollbacks[len];
    
    /* VULNERABLE LINE: xmlregexp.c:3085 */
    /* The SA spec indicates OOB risk in memset length calculation */
    /* Vulnerability assertion: ensure (exec->maxRollbacks - len) is non-negative */
    SAILR_ASSERT((exec->maxRollbacks - len) >= 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(tmp, 0, (exec->maxRollbacks - len) * sizeof(xmlRegExecRollback));
    
    exec->rollbacks[exec->nbRollbacks].state = exec->state;
    exec->rollbacks[exec->nbRollbacks].index = exec->index;
    exec->rollbacks[exec->nbRollbacks].nextbranch = exec->transno + 1;
    
    if (exec->comp->nbCounters > 0) {
        /* Additional code would go here */
    }
}

/* Helper to initialize exec context */
xmlRegExecCtxt* create_exec_context(void) {
    xmlRegExecCtxt* exec = (xmlRegExecCtxt*)malloc(sizeof(xmlRegExecCtxt));
    if (!exec) return NULL;
    
    exec->status = 0;
    exec->rollbacks = NULL;
    exec->nbRollbacks = 0;
    exec->maxRollbacks = 0;
    exec->state = NULL;
    exec->index = 0;
    exec->transno = 0;
    exec->comp = NULL;
    
    return exec;
}

int main(void) {
    xmlRegExecCtxt* exec;
    int len;
    int maxRollbacks;
    
    /* Create execution context */
    exec = create_exec_context();
    if (!exec) return 1;
    
    /* Make len symbolic - this is the variable used in the vulnerable memset */
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Make maxRollbacks symbolic - used in the memset length calculation */
    klee_make_symbolic(&maxRollbacks, sizeof(maxRollbacks), "maxRollbacks");
    
    /* Apply bounds hints from SA spec */
    klee_assume(len >= 0);
    
    /* Ensure maxRollbacks is non-negative */
    klee_assume(maxRollbacks >= 0);
    
    /* Set up exec context */
    exec->maxRollbacks = maxRollbacks;
    
    /* Allocate rollbacks array with symbolic size */
    exec->rollbacks = (xmlRegExecRollback*)malloc(
        (maxRollbacks > 0 ? maxRollbacks : 1) * sizeof(xmlRegExecRollback));
    
    /* Call the target function with symbolic inputs */
    target_function(exec, len);
    
    /* Cleanup */
    free(exec->rollbacks);
    free(exec);
    
    return 0;
}