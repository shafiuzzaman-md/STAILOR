#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations of types and functions needed from libxml2 */
typedef struct _xmlRelaxNGValidState xmlRelaxNGValidState;
typedef struct _xmlRelaxNGValidState {
    void* attrs;
    int maxAttrs;
    int nbAttrs;
    /* Other fields omitted for brevity; only those used in the snippet are needed */
} xmlRelaxNGValidState;

/* Stub for the target function */
xmlRelaxNGValidState* xmlRelaxNGCopyValidState(xmlRelaxNGValidState* state) {
    xmlRelaxNGValidState* ret;
    void* attrs;
    int maxAttrs;

    if (state == NULL)
        return NULL;

    ret = (xmlRelaxNGValidState*)malloc(sizeof(xmlRelaxNGValidState));
    if (ret == NULL)
        return NULL;

    /* The vulnerable memcpy is at line 1283 (context line 1283 in the snippet) */
    /* The snippet shows: memcpy(ret, state, sizeof(xmlRelaxNGValidState)); */
    /* This is a structure copy; the OOB risk is if sizeof(xmlRelaxNGValidState) 
       is larger than the allocated size for 'ret' or 'state' points to an object 
       smaller than that size. Since ret is freshly malloc'd with exactly 
       sizeof(xmlRelaxNGValidState), the risk is that 'state' might be pointing 
       to a smaller buffer. However, the SA rule is about length-misuse: the 
       length argument (sizeof(xmlRelaxNGValidState)) might exceed the actual 
       size of either source or destination. */

    /* We'll assume 'state' is a symbolic object that might be smaller than 
       sizeof(xmlRelaxNGValidState). We'll model that by making a symbolic 
       size for the buffer that 'state' points to. */
    int state_buffer_size;
    klee_make_symbolic(&state_buffer_size, sizeof(state_buffer_size), "state_buffer_size");
    /* Assume state_buffer_size is between 0 and sizeof(xmlRelaxNGValidState) + some margin */
    klee_assume(state_buffer_size >= 0 && state_buffer_size <= sizeof(xmlRelaxNGValidState) + 16);

    /* Vulnerability assertion: the memcpy length should not exceed the actual 
       size of the source buffer (state) or the destination buffer (ret). 
       Since ret is exactly sizeof(xmlRelaxNGValidState), we check against state. */
    SAILR_ASSERT(sizeof(xmlRelaxNGValidState) <= state_buffer_size);

    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* The actual memcpy call (simulated) */
    if (sizeof(xmlRelaxNGValidState) <= state_buffer_size) {
        memcpy(ret, state, sizeof(xmlRelaxNGValidState));
    } else {
        /* This path would be an OOB read from state */
    }

    /* Rest of the function (simplified) */
    attrs = ret->attrs;
    maxAttrs = ret->maxAttrs;
    ret->attrs = attrs;
    ret->maxAttrs = maxAttrs;
    if (state->nbAttrs > 0) {
        if (ret->attrs == NULL) {
            ret->maxAttrs = state->maxAttrs;
        }
    }
    return ret;
}

/* Helper to create a symbolic xmlRelaxNGValidState */
xmlRelaxNGValidState* make_symbolic_state(void) {
    xmlRelaxNGValidState* s = (xmlRelaxNGValidState*)malloc(sizeof(xmlRelaxNGValidState));
    if (s == NULL) return NULL;
    klee_make_symbolic(s, sizeof(xmlRelaxNGValidState), "state");
    /* Ensure nbAttrs is non-negative */
    klee_assume(s->nbAttrs >= 0);
    return s;
}

int main(void) {
    xmlRelaxNGValidState* state = make_symbolic_state();
    if (state == NULL) return 0;
    xmlRelaxNGValidState* copy = xmlRelaxNGCopyValidState(state);
    if (copy != NULL) free(copy);
    free(state);
    return 0;
}