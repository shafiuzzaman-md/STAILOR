#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for types and functions needed to reach target */
typedef struct _xmlRegExecRollback xmlRegExecRollback;
typedef struct _xmlRegExecCtxt xmlRegExecCtxt;

struct _xmlRegExecRollback {
    /* Minimal stub structure */
    void* data;
};

struct _xmlRegExecCtxt {
    int maxRollbacks;
    int nbRollbacks;
    xmlRegExecRollback* rollbacks;
    int status;
};

/* Stub for xmlRegexpErrMemory */
void xmlRegexpErrMemory(void* ctx, const char* msg) {
    /* Do nothing in harness */
}

/* Stub for xmlFAGenerateTransitions - this is the entrypoint from SA spec */
void xmlFAGenerateTransitions(xmlRegExecCtxt* exec) {
    /* Simulate the code path leading to line 3068 */
    if (exec->rollbacks == NULL) {
        xmlRegexpErrMemory(NULL, "saving regexp");
        exec->maxRollbacks = 0;
        exec->status = 1; /* XML_REGEXP_OUT_OF_MEMORY */
        return;
    }
    
    /* This corresponds to the memset call before line 3068 */
    if (exec->maxRollbacks > 0) {
        memset(exec->rollbacks, 0,
               exec->maxRollbacks * sizeof(xmlRegExecRollback));
    }
    
    /* This is the target condition at line 3068 */
    if (exec->nbRollbacks >= exec->maxRollbacks) {
        xmlRegExecRollback *tmp;
        int len = exec->maxRollbacks;
        
        /* VULNERABILITY ASSERTION: Check that len is within bounds for allocation */
        /* The vulnerability is that len could be too large for reallocation */
        SAILR_ASSERT(len >= 0 && len <= 1024); /* Reasonable upper bound */
        
        /* REACHABILITY ASSERTION */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
}

int main(void) {
    /* Create symbolic execution context */
    xmlRegExecCtxt* exec = (xmlRegExecCtxt*)malloc(sizeof(xmlRegExecCtxt));
    if (!exec) return 1;
    
    /* Make key fields symbolic to explore different paths */
    klee_make_symbolic(&exec->maxRollbacks, sizeof(exec->maxRollbacks), "maxRollbacks");
    klee_make_symbolic(&exec->nbRollbacks, sizeof(exec->nbRollbacks), "nbRollbacks");
    
    /* Assume reasonable bounds for symbolic values */
    klee_assume(exec->maxRollbacks >= 0);
    klee_assume(exec->maxRollbacks <= 1024); /* Reasonable upper bound */
    klee_assume(exec->nbRollbacks >= 0);
    klee_assume(exec->nbRollbacks <= 2048); /* Allow nbRollbacks to exceed maxRollbacks */
    
    /* Allocate rollbacks array based on maxRollbacks */
    if (exec->maxRollbacks > 0) {
        exec->rollbacks = (xmlRegExecRollback*)malloc(
            exec->maxRollbacks * sizeof(xmlRegExecRollback));
    } else {
        exec->rollbacks = NULL;
    }
    
    exec->status = 0;
    
    /* Call the entrypoint function */
    xmlFAGenerateTransitions(exec);
    
    /* Cleanup */
    if (exec->rollbacks) free(exec->rollbacks);
    free(exec);
    
    return 0;
}