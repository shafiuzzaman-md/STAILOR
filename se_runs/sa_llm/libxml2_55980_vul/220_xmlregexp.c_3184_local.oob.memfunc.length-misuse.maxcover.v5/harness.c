#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub declarations for libxml2 types and functions needed to reach target */
typedef struct _xmlRegExecCtxt xmlRegExecCtxt;
typedef xmlRegExecCtxt *xmlRegExecCtxtPtr;

typedef struct _xmlRegExecRollback xmlRegExecRollback;

struct _xmlRegExecCtxt {
    xmlRegExecRollback *rollbacks;
    int maxRollbacks;
    int nbRollbacks;
    /* other fields omitted for brevity */
};

/* Stub functions */
void xmlRegexpErrMemory(void *ctxt, const char *msg) {
    /* no-op stub */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

void *xmlRealloc(void *ptr, size_t size) {
    return realloc(ptr, size);
}

/* The function containing the target line - simplified to focus on the vulnerable path */
static void target_function(xmlRegExecCtxtPtr exec) {
    if (exec->rollbacks == NULL) {
        exec->maxRollbacks = 4;
        exec->rollbacks = (xmlRegExecRollback *) xmlMalloc(exec->maxRollbacks *
                                 sizeof(xmlRegExecRollback));
        if (exec->rollbacks == NULL) {
            xmlRegexpErrMemory(NULL, "saving regexp");
            exec->maxRollbacks = 0;
            return;
        }
        /* TARGET LINE 3184: memset with potentially unsafe size calculation */
        memset(exec->rollbacks, 0,
               exec->maxRollbacks * sizeof(xmlRegExecRollback));
        
        /* VULNERABILITY ASSERTION: Ensure the multiplication doesn't overflow */
        SAILR_ASSERT(exec->maxRollbacks <= SIZE_MAX / sizeof(xmlRegExecRollback));
        
        /* REACHABILITY ASSERTION */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    } else if (exec->nbRollbacks >= exec->maxRollbacks) {
        /* Other path - not our focus */
        xmlRegExecRollback *tmp;
        int len = exec->maxRollbacks;
        exec->maxRollbacks *= 2;
        tmp = (xmlRegExecRollback *) xmlRealloc(exec->rollbacks,
                exec->maxRollbacks * sizeof(xmlRegExecRollback));
    }
}

/* Entry point that sets up symbolic execution state */
int main(void) {
    xmlRegExecCtxt exec;
    
    /* Initialize fields symbolically */
    exec.rollbacks = NULL;
    exec.maxRollbacks = 0;
    exec.nbRollbacks = 0;
    
    /* Make exec.rollbacks symbolic to control which path is taken */
    int rollbacks_is_null;
    klee_make_symbolic(&rollbacks_is_null, sizeof(rollbacks_is_null), "rollbacks_is_null");
    klee_assume(rollbacks_is_null == 1);  /* Force the NULL path to reach target line */
    
    if (rollbacks_is_null) {
        exec.rollbacks = NULL;
    } else {
        /* Allocate a dummy non-NULL pointer for the other path */
        exec.rollbacks = (xmlRegExecRollback *)malloc(sizeof(xmlRegExecRollback));
    }
    
    /* Call the target function */
    target_function(&exec);
    
    /* Cleanup */
    if (exec.rollbacks != NULL) {
        free(exec.rollbacks);
    }
    
    return 0;
}