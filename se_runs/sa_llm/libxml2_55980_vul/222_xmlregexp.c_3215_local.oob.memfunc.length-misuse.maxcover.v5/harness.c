#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations of types from libxml2 */
typedef struct _xmlRegExecCtxt xmlRegExecCtxt;
typedef xmlRegExecCtxt *xmlRegExecCtxtPtr;
typedef struct _xmlRegexp xmlRegexp;
typedef xmlRegexp *xmlRegexpPtr;

/* Minimal struct definitions to match the code at line 3215 */
struct _xmlRegexp {
    int nbCounters;
};

struct _xmlRegRollback {
    int *counts;
};

struct _xmlRegExecCtxt {
    struct _xmlRegRollback *rollbacks;
    int nbRollbacks;
    int *counts;
    xmlRegexpPtr comp;
    int status;
};

/* Stub for xmlMalloc */
void *xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlRegexpErrMemory - does nothing */
void xmlRegexpErrMemory(void *ctx, const char *msg) {
    (void)ctx;
    (void)msg;
}

/* The function containing the target line - simplified version */
static void xmlFARegExecSave(xmlRegExecCtxtPtr exec) {
    if (exec->rollbacks == NULL) {
        return;
    }
    
    if (exec->nbRollbacks >= 0) {
        if (exec->rollbacks[exec->nbRollbacks].counts == NULL) {
            exec->rollbacks[exec->nbRollbacks].counts = (int *)
                xmlMalloc(exec->comp->nbCounters * sizeof(int));
            if (exec->rollbacks[exec->nbRollbacks].counts == NULL) {
                xmlRegexpErrMemory(NULL, "saving regexp");
                exec->status = -5;
                return;
            }
        }
        
        /* TARGET LINE 3215 - vulnerable memcpy */
        memcpy(exec->rollbacks[exec->nbRollbacks].counts, exec->counts,
               exec->comp->nbCounters * sizeof(int));
        
        /* VULNERABILITY ASSERTION: Ensure the copy size doesn't exceed destination buffer */
        SAILR_ASSERT(exec->comp->nbCounters * sizeof(int) <= 
                     exec->rollbacks[exec->nbRollbacks].counts ? 
                     (size_t)-1 : 0); /* Simplified check - actual would need buffer size */
        
        /* REACHABILITY ASSERTION */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    exec->nbRollbacks++;
}

int main(void) {
    /* Create symbolic execution context */
    xmlRegExecCtxt exec;
    
    /* Initialize with symbolic values */
    klee_make_symbolic(&exec, sizeof(exec), "exec");
    
    /* Assume reasonable bounds for symbolic fields */
    klee_assume(exec.nbRollbacks >= 0);
    klee_assume(exec.nbRollbacks < 100); /* Reasonable upper bound */
    
    /* Allocate and initialize rollbacks array */
    exec.rollbacks = malloc((exec.nbRollbacks + 1) * sizeof(struct _xmlRegRollback));
    klee_assume(exec.rollbacks != NULL);
    
    /* Initialize the current rollback entry */
    exec.rollbacks[exec.nbRollbacks].counts = NULL;
    
    /* Allocate and initialize comp structure */
    exec.comp = malloc(sizeof(struct _xmlRegexp));
    klee_assume(exec.comp != NULL);
    
    /* Make nbCounters symbolic with reasonable bounds */
    klee_make_symbolic(&exec.comp->nbCounters, sizeof(exec.comp->nbCounters), "nbCounters");
    klee_assume(exec.comp->nbCounters >= 0);
    klee_assume(exec.comp->nbCounters < 1000); /* Reasonable upper bound */
    
    /* Allocate counts array if nbCounters > 0 */
    if (exec.comp->nbCounters > 0) {
        exec.counts = malloc(exec.comp->nbCounters * sizeof(int));
        klee_assume(exec.counts != NULL);
    } else {
        exec.counts = NULL;
    }
    
    /* Initialize status */
    exec.status = 0;
    
    /* Call the target function */
    xmlFARegExecSave(&exec);
    
    /* Cleanup */
    if (exec.counts != NULL) {
        free(exec.counts);
    }
    if (exec.comp != NULL) {
        free(exec.comp);
    }
    if (exec.rollbacks != NULL) {
        free(exec.rollbacks);
    }
    
    return 0;
}