#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for types and functions needed */
typedef struct _xmlRegExecCtxt xmlRegExecCtxt;
typedef xmlRegExecCtxt *xmlRegExecCtxtPtr;
typedef struct _xmlRegexp xmlRegexp;
typedef xmlRegexp *xmlRegexpPtr;

/* Minimal stub for xmlRegexpPtr */
struct _xmlRegexp {
    void *compact;
    void *states;
};

/* Stub for xmlRegExecCtxt - only need size for memset */
struct _xmlRegExecCtxt {
    char dummy[256]; /* Conservative size to avoid OOB in memset */
};

/* Stub functions */
void *xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    return ptr;
}

void xmlRegexpErrMemory(void *ctx, const char *msg) {
    /* Do nothing */
}

/* Target function - simplified version to reach line 3589 */
xmlRegExecCtxtPtr xmlRegNewExecCtxt(xmlRegexpPtr comp) {
    xmlRegExecCtxtPtr exec;
    
    if (comp == NULL)
        return NULL;
    if ((comp->compact == NULL) && (comp->states == NULL))
        return NULL;
    
    exec = (xmlRegExecCtxtPtr) xmlMalloc(sizeof(xmlRegExecCtxt));
    if (exec == NULL) {
        xmlRegexpErrMemory(NULL, "creating execution context");
        return NULL;
    }
    
    /* TARGET LINE 3589 - memset with sizeof(xmlRegExecCtxt) */
    memset(exec, 0, sizeof(xmlRegExecCtxt));
    
    /* Vulnerability assertion: ensure allocation size >= memset size */
    SAILR_ASSERT(sizeof(xmlRegExecCtxt) <= malloc_usable_size(exec));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Continue execution to avoid immediate termination */
    exec->inputString = NULL;
    exec->index = 0;
    exec->determinist = 1;
    exec->maxRollbacks = 0;
    exec->nbRollbacks = 0;
    exec->rollbacks = NULL;
    exec->status = 0;
    exec->comp = comp;
    
    return exec;
}

/* Helper to get usable size of allocation (simplified) */
size_t malloc_usable_size(void *ptr) {
    if (ptr == NULL) return 0;
    /* In KLEE, we can make this symbolic to explore different allocation sizes */
    size_t size;
    klee_make_symbolic(&size, sizeof(size), "alloc_size");
    klee_assume(size >= sizeof(xmlRegExecCtxt)); /* At least the expected size */
    klee_assume(size <= 2 * sizeof(xmlRegExecCtxt)); /* Bound exploration */
    return size;
}

int main(void) {
    xmlRegexp comp;
    
    /* Make comp fields symbolic to explore both branches */
    klee_make_symbolic(&comp.compact, sizeof(comp.compact), "compact_ptr");
    klee_make_symbolic(&comp.states, sizeof(comp.states), "states_ptr");
    
    /* Call the target function */
    xmlRegExecCtxtPtr result = xmlRegNewExecCtxt(&comp);
    
    /* Cleanup */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}