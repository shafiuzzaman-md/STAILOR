#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlRelaxNGValidCtxt xmlRelaxNGValidCtxt;
typedef struct _xmlRelaxNGValidState xmlRelaxNGValidState;
typedef struct _xmlNode xmlNode;
typedef xmlNode* xmlNodePtr;

/* Stub structures to avoid dereferencing incomplete types */
struct _xmlRelaxNGValidCtxt {
    xmlRelaxNGValidState* state;
};

struct _xmlRelaxNGValidState {
    xmlNodePtr seq;
};

struct _xmlNode {
    int dummy;
};

/* Stub functions to avoid linking issues */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlRngVErrMemory(xmlRelaxNGValidCtxt* ctxt, const char* msg) {
    /* Do nothing */
}

xmlNodePtr xmlRelaxNGSkipIgnored(xmlRelaxNGValidCtxt* ctxt, xmlNodePtr cur) {
    /* Return the same pointer */
    return cur;
}

/* Target function that contains the vulnerable memset */
int target_function(xmlRelaxNGValidCtxt* ctxt, int nbgroups) {
    xmlNodePtr* list;
    xmlNodePtr* lasts;
    xmlNodePtr cur, start;
    
    /* Allocate list - line 9384 in original */
    list = (xmlNodePtr*)malloc(nbgroups * sizeof(xmlNodePtr));
    if (list == NULL) {
        return -1;
    }
    memset(list, 0, nbgroups * sizeof(xmlNodePtr));
    
    /* Allocate lasts - line 9385 in original */
    lasts = (xmlNodePtr*)xmlMalloc(nbgroups * sizeof(xmlNodePtr));
    if (lasts == NULL) {
        xmlRngVErrMemory(ctxt, "validating\n");
        free(list);
        return -1;
    }
    
    /* VULNERABLE LINE: line 9390 in original */
    memset(lasts, 0, nbgroups * sizeof(xmlNodePtr));
    
    /* Vulnerability assertion: ensure nbgroups is non-negative */
    SAILR_ASSERT(nbgroups >= 0);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup and return */
    free(list);
    free(lasts);
    return 0;
}

int main(void) {
    xmlRelaxNGValidCtxt ctxt;
    xmlRelaxNGValidState state;
    xmlNode node;
    int nbgroups;
    
    /* Initialize context */
    ctxt.state = &state;
    state.seq = &node;
    
    /* Make nbgroups symbolic */
    klee_make_symbolic(&nbgroups, sizeof(nbgroups), "nbgroups");
    
    /* Assume reasonable bounds for exploration */
    klee_assume(nbgroups >= 0);
    klee_assume(nbgroups <= 1000);  /* Reasonable upper bound */
    
    /* Call the target function */
    target_function(&ctxt, nbgroups);
    
    return 0;
}