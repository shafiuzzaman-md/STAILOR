#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlRelaxNGValidState xmlRelaxNGValidState;
typedef struct _xmlAttr xmlAttr;
typedef xmlAttr* xmlAttrPtr;
typedef void* xmlRelaxNGValidCtxt;

struct _xmlRelaxNGValidState {
    xmlAttrPtr* attrs;
    int nbAttrs;
    int maxAttrs;
};

/* Stub for xmlRngVErrMemory */
void xmlRngVErrMemory(xmlRelaxNGValidCtxt ctxt, const char* msg) {
    (void)ctxt;
    (void)msg;
}

/* Target function signature from relaxng.c */
xmlRelaxNGValidState* xmlRelaxNGCopyValidState(xmlRelaxNGValidCtxt ctxt, xmlRelaxNGValidState* state);

/* Implementation of the target function (simplified to focus on the vulnerable path) */
xmlRelaxNGValidState* xmlRelaxNGCopyValidState(xmlRelaxNGValidCtxt ctxt, xmlRelaxNGValidState* state) {
    xmlRelaxNGValidState* ret;
    
    if (state == NULL)
        return NULL;
    
    ret = (xmlRelaxNGValidState*)malloc(sizeof(xmlRelaxNGValidState));
    if (ret == NULL) {
        xmlRngVErrMemory(ctxt, "allocating state\n");
        return NULL;
    }
    
    ret->nbAttrs = state->nbAttrs;
    ret->maxAttrs = state->maxAttrs;
    ret->attrs = NULL;
    
    if (state->nbAttrs > 0) {
        xmlAttrPtr* tmp;
        
        if (ret->maxAttrs < state->nbAttrs) {
            tmp = (xmlAttrPtr*)malloc(state->nbAttrs * sizeof(xmlAttrPtr));
            if (tmp == NULL) {
                xmlRngVErrMemory(ctxt, "allocating states\n");
                ret->nbAttrs = 0;
                return (ret);
            }
            ret->maxAttrs = state->maxAttrs;
            ret->attrs = tmp;
        }
        
        /* VULNERABLE LINE: memcpy(ret->attrs, state->attrs, state->nbAttrs * sizeof(xmlAttrPtr)); */
        /* We need to reach this line with appropriate state */
        
        /* Vulnerability assertion: ensure ret->attrs has enough space */
        SAILR_ASSERT(state->nbAttrs <= ret->maxAttrs);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Actual memcpy (commented out since we can't execute past the reachability assert) */
        /* memcpy(ret->attrs, state->attrs, state->nbAttrs * sizeof(xmlAttrPtr)); */
    }
    return (ret);
}

int main(void) {
    xmlRelaxNGValidState state;
    xmlRelaxNGValidState* ret;
    xmlRelaxNGValidCtxt ctxt = NULL;
    
    /* Make state fields symbolic */
    klee_make_symbolic(&state.nbAttrs, sizeof(state.nbAttrs), "state.nbAttrs");
    klee_make_symbolic(&state.maxAttrs, sizeof(state.maxAttrs), "state.maxAttrs");
    
    /* Assume reasonable bounds to avoid excessive exploration */
    klee_assume(state.nbAttrs >= 0 && state.nbAttrs < 100);
    klee_assume(state.maxAttrs >= 0 && state.maxAttrs < 100);
    
    /* Allocate attrs array if nbAttrs > 0 */
    if (state.nbAttrs > 0) {
        state.attrs = (xmlAttrPtr*)malloc(state.nbAttrs * sizeof(xmlAttrPtr));
        klee_assume(state.attrs != NULL);
        
        /* Make the array elements symbolic */
        for (int i = 0; i < state.nbAttrs; i++) {
            klee_make_symbolic(&state.attrs[i], sizeof(xmlAttrPtr), "state.attrs[i]");
        }
    } else {
        state.attrs = NULL;
    }
    
    /* Call the target function */
    ret = xmlRelaxNGCopyValidState(ctxt, &state);
    
    /* Cleanup */
    if (state.attrs != NULL) {
        free(state.attrs);
    }
    if (ret != NULL) {
        if (ret->attrs != NULL) {
            free(ret->attrs);
        }
        free(ret);
    }
    
    return 0;
}