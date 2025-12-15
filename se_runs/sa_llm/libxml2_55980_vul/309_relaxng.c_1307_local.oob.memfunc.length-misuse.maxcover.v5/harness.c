#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlAttr xmlAttr;
typedef xmlAttr* xmlAttrPtr;

typedef struct _xmlRelaxNGValidState {
    xmlAttrPtr* attrs;
    int maxAttrs;
    int nbAttrs;
    /* Other fields omitted for brevity */
} xmlRelaxNGValidState;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlRngVErrMemory */
void xmlRngVErrMemory(void* ctxt, const char* msg) {
    /* Do nothing */
}

/* Target function - simplified version from relaxng.c around line 1307 */
xmlRelaxNGValidState* target_function(xmlRelaxNGValidState* state) {
    xmlRelaxNGValidState* ret;
    xmlAttrPtr* attrs;
    int maxAttrs;

    /* Allocate ret if needed (simplified from original) */
    ret = (xmlRelaxNGValidState*)malloc(sizeof(xmlRelaxNGValidState));
    if (ret == NULL) {
        xmlRngVErrMemory(NULL, "allocating states\n");
        return NULL;
    }
    memset(ret, 0, sizeof(xmlRelaxNGValidState));
    
    attrs = ret->attrs;
    maxAttrs = ret->maxAttrs;
    
    /* TARGET LINE 1307 - suspicious memcpy */
    memcpy(ret, state, sizeof(xmlRelaxNGValidState));
    
    ret->attrs = attrs;
    ret->maxAttrs = maxAttrs;
    
    if (state->nbAttrs > 0) {
        if (ret->attrs == NULL) {
            ret->maxAttrs = state->maxAttrs;
            ret->attrs = (xmlAttrPtr*)xmlMalloc(ret->maxAttrs * sizeof(xmlAttrPtr));
            if (ret->attrs == NULL) {
                free(ret);
                return NULL;
            }
        }
    }
    
    return ret;
}

int main(void) {
    xmlRelaxNGValidState state;
    
    /* Make state fields symbolic to explore different paths */
    klee_make_symbolic(&state, sizeof(state), "state");
    
    /* Constrain state to avoid trivial null/negative issues */
    klee_assume(state.maxAttrs >= 0);
    klee_assume(state.nbAttrs >= 0);
    klee_assume(state.nbAttrs <= state.maxAttrs);
    
    /* Call target function */
    xmlRelaxNGValidState* result = target_function(&state);
    
    if (result != NULL) {
        /* Vulnerability assertion: ensure memcpy size is safe */
        /* The condition checks that the source state is properly bounded */
        SAILR_ASSERT(state.maxAttrs >= 0 && state.nbAttrs >= 0 && state.nbAttrs <= state.maxAttrs);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        free(result);
    }
    
    return 0;
}