#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub declarations for libxml2 types and functions needed to reach target */
typedef struct _xmlRegexp xmlRegexp;
typedef struct _xmlRegExecCtxt xmlRegExecCtxt;

struct _xmlRegexp {
    int nbCounters;
    /* other fields omitted */
};

struct _xmlRegExecCtxt {
    int *counts;
    int *errCounts;
    int inputStackMax;
    int inputStackNr;
    void *inputStack;
    /* other fields omitted */
};

/* Stub implementations of libxml2 functions */
void* xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    return ptr;
}

void xmlFree(void *ptr) {
    free(ptr);
}

void xmlRegexpErrMemory(void *ctx, const char *msg) {
    /* do nothing */
}

/* Target function - extracted from xmlregexp.c around line 3616 */
xmlRegExecCtxt* xmlRegNewExecCtxt(const xmlRegexp *comp, void *callback, void *data) {
    xmlRegExecCtxt *exec;
    
    if (comp == NULL)
        return(NULL);
    
    exec = (xmlRegExecCtxt *) xmlMalloc(sizeof(xmlRegExecCtxt));
    if (exec == NULL) {
        xmlRegexpErrMemory(NULL, "creating execution context");
        return(NULL);
    }
    memset(exec, 0, sizeof(xmlRegExecCtxt));
    
    if (comp->nbCounters > 0) {
        exec->counts = (int *) xmlMalloc(comp->nbCounters * sizeof(int) * 2);
        if (exec->counts == NULL) {
            xmlRegexpErrMemory(NULL, "creating execution context");
            xmlFree(exec);
            return(NULL);
        }
        /* TARGET LINE 3616 - vulnerable memset */
        memset(exec->counts, 0, comp->nbCounters * sizeof(int) * 2);
        exec->errCounts = &exec->counts[comp->nbCounters];
    } else {
        exec->counts = NULL;
        exec->errCounts = NULL;
    }
    
    return exec;
}

int main(void) {
    /* Create symbolic inputs to drive execution to target line */
    xmlRegexp comp;
    
    /* Make nbCounters symbolic - this controls the allocation size */
    klee_make_symbolic(&comp.nbCounters, sizeof(comp.nbCounters), "nbCounters");
    
    /* Assume nbCounters > 0 to take the allocation path */
    klee_assume(comp.nbCounters > 0);
    
    /* Call the target function */
    xmlRegExecCtxt *exec = xmlRegNewExecCtxt(&comp, NULL, NULL);
    
    if (exec != NULL) {
        /* Vulnerability assertion: check if nbCounters could cause overflow */
        /* The condition should capture the safety property that the multiplication
           comp->nbCounters * sizeof(int) * 2 does not overflow size_t */
        SAILR_ASSERT(comp.nbCounters <= (SIZE_MAX / (sizeof(int) * 2)));
        
        /* Reachability assertion */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Cleanup */
        if (exec->counts) {
            free(exec->counts);
        }
        free(exec);
    }
    
    return 0;
}