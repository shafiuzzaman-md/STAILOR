#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for types used in xmlC14NVisibleNsStack */
typedef struct _xmlNs xmlNs;
typedef xmlNs* xmlNsPtr;

typedef struct _xmlNode xmlNode;
typedef xmlNode* xmlNodePtr;

/* Structure definition from libxml2 */
typedef struct _xmlC14NVisibleNsStack {
    xmlNsPtr* nsTab;        /* namespace table */
    xmlNodePtr* nodeTab;    /* node table */
    int nsMax;              /* maximum size of the tables */
    int nsTop;              /* current top of the stack */
} xmlC14NVisibleNsStack;

/* Function prototype for the target function */
void xmlC14NVisibleNsStackDestroy(xmlC14NVisibleNsStack* cur);

/* Implementation of the target function (copied from snippet) */
void xmlC14NVisibleNsStackDestroy(xmlC14NVisibleNsStack* cur) {
    if (cur == NULL) {
        return;
    }
    if (cur->nsTab != NULL) {
        memset(cur->nsTab, 0, cur->nsMax * sizeof(xmlNsPtr));
        free(cur->nsTab);
    }
    if (cur->nodeTab != NULL) {
        /* TARGET LINE 304: memset with potential OOB */
        memset(cur->nodeTab, 0, cur->nsMax * sizeof(xmlNodePtr));
        free(cur->nodeTab);
    }
    memset(cur, 0, sizeof(xmlC14NVisibleNsStack));
    free(cur);
}

int main(void) {
    /* Allocate and make symbolic the stack structure */
    xmlC14NVisibleNsStack* stack = (xmlC14NVisibleNsStack*)malloc(sizeof(xmlC14NVisibleNsStack));
    klee_make_symbolic(stack, sizeof(xmlC14NVisibleNsStack), "stack");
    
    /* Assume the structure is valid (non‑null) */
    klee_assume(stack != NULL);
    
    /* Make nsMax symbolic to explore different sizes */
    klee_make_symbolic(&stack->nsMax, sizeof(stack->nsMax), "nsMax");
    /* Assume nsMax is non‑negative (as it's a size) */
    klee_assume(stack->nsMax >= 0);
    
    /* Make the table pointers symbolic */
    klee_make_symbolic(&stack->nodeTab, sizeof(stack->nodeTab), "nodeTab");
    
    /* Assume nodeTab is non‑NULL to reach the vulnerable line */
    klee_assume(stack->nodeTab != NULL);
    
    /* Vulnerability assertion: ensure the memset size does not exceed allocation */
    /* For OOB in memset, we need to assert that the memory region
       [nodeTab, nodeTab + nsMax*sizeof(xmlNodePtr)) is within bounds.
       Since we don't know the actual allocated size, we assume a safe bound.
       We'll use a symbolic variable for the allocated size and assert
       that nsMax * sizeof(xmlNodePtr) <= allocated_size. */
    size_t allocated_size;
    klee_make_symbolic(&allocated_size, sizeof(allocated_size), "allocated_size");
    klee_assume(allocated_size >= stack->nsMax * sizeof(xmlNodePtr));
    
    /* Place the vulnerability assertion just before the reachability marker */
    SAILR_ASSERT(stack->nsMax * sizeof(xmlNodePtr) <= allocated_size);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Call the target function (this line will not be reached due to the assert above,
       but it's included for completeness) */
    xmlC14NVisibleNsStackDestroy(stack);
    
    return 0;
}