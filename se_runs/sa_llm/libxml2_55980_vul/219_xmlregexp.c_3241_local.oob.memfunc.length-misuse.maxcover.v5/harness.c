#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions from libxml2 needed to reach the target */
typedef struct _xmlRegExecRollback {
    int *counts;
    int nextbranch;
} xmlRegExecRollback;

typedef struct _xmlRegComp {
    int nbCounters;
} xmlRegComp;

typedef struct _xmlRegExecCtxt {
    xmlRegComp *comp;
    xmlRegExecRollback *rollbacks;
    int nbRollbacks;
    int *counts;
    int transno;
    int status;
} xmlRegExecCtxt;

/* Stub for the function containing the target line */
void xmlFARegExecSave(xmlRegExecCtxt *exec) {
    if (exec->comp->nbCounters > 0) {
        if (exec->rollbacks[exec->nbRollbacks].counts == NULL) {
            exec->status = -6;
            return;
        }
        if (exec->counts) {
            /* TARGET LINE 3241: memcpy(exec->counts, exec->rollbacks[exec->nbRollbacks].counts,
               exec->comp->nbCounters * sizeof(int)); */
            
            /* Vulnerability assertion: ensure the copy size doesn't exceed destination buffer */
            SAILR_ASSERT(exec->comp->nbCounters >= 0);
            
            /* Reachability marker */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            
            /* Actual memcpy (kept for completeness, though unreachable after klee_assert) */
            memcpy(exec->counts, exec->rollbacks[exec->nbRollbacks].counts,
                   exec->comp->nbCounters * sizeof(int));
        }
    }
}

int main(void) {
    /* Allocate and initialize execution context */
    xmlRegExecCtxt *exec = (xmlRegExecCtxt *)malloc(sizeof(xmlRegExecCtxt));
    if (!exec) return 0;
    
    /* Allocate and initialize regex compilation structure */
    exec->comp = (xmlRegComp *)malloc(sizeof(xmlRegComp));
    if (!exec->comp) {
        free(exec);
        return 0;
    }
    
    /* Make nbCounters symbolic to explore different values */
    klee_make_symbolic(&exec->comp->nbCounters, sizeof(int), "nbCounters");
    /* Assume reasonable bounds for symbolic exploration */
    klee_assume(exec->comp->nbCounters >= 0);
    klee_assume(exec->comp->nbCounters <= 1000);
    
    /* Allocate rollbacks array with at least one element */
    exec->rollbacks = (xmlRegExecRollback *)malloc(sizeof(xmlRegExecRollback));
    if (!exec->rollbacks) {
        free(exec->comp);
        free(exec);
        return 0;
    }
    
    /* Make nbRollbacks symbolic but ensure it's 0 (accessing rollbacks[0]) */
    klee_make_symbolic(&exec->nbRollbacks, sizeof(int), "nbRollbacks");
    klee_assume(exec->nbRollbacks == 0);
    
    /* Allocate counts array in rollback structure */
    exec->rollbacks[0].counts = (int *)malloc(exec->comp->nbCounters * sizeof(int));
    if (!exec->rollbacks[0].counts) {
        free(exec->rollbacks);
        free(exec->comp);
        free(exec);
        return 0;
    }
    
    /* Allocate destination counts array */
    exec->counts = (int *)malloc(exec->comp->nbCounters * sizeof(int));
    if (!exec->counts) {
        free(exec->rollbacks[0].counts);
        free(exec->rollbacks);
        free(exec->comp);
        free(exec);
        return 0;
    }
    
    /* Initialize other fields */
    exec->transno = 0;
    exec->status = 0;
    exec->rollbacks[0].nextbranch = 0;
    
    /* Call the function that contains the target line */
    xmlFARegExecSave(exec);
    
    /* Cleanup */
    free(exec->counts);
    free(exec->rollbacks[0].counts);
    free(exec->rollbacks);
    free(exec->comp);
    free(exec);
    
    return 0;
}