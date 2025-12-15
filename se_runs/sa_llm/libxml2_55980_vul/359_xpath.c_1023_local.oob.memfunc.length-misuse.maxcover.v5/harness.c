#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlXPathCompExpr xmlXPathCompExpr;
typedef xmlXPathCompExpr *xmlXPathCompExprPtr;
typedef struct _xmlXPathStepOp xmlXPathStepOp;

struct _xmlXPathCompExpr {
    int maxStep;
    int nbStep;
    xmlXPathStepOp *steps;
    /* Other fields omitted for brevity */
};

/* Stub functions to avoid linking issues */
void xmlXPathErrMemory(void *ctxt, const char *msg) {
    /* Do nothing */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlFree(void *ptr) {
    free(ptr);
}

/* Target function from xpath.c */
xmlXPathCompExprPtr xmlXPathNewCompExpr(void) {
    xmlXPathCompExprPtr cur;

    cur = (xmlXPathCompExprPtr) xmlMalloc(sizeof(xmlXPathCompExpr));
    if (cur == NULL) {
        xmlXPathErrMemory(NULL, "allocating component\n");
        return(NULL);
    }
    
    /* TARGET LINE 1023: memset(cur, 0, sizeof(xmlXPathCompExpr)); */
    /* Vulnerability assertion: ensure the size argument doesn't cause OOB */
    SAILR_ASSERT(sizeof(xmlXPathCompExpr) <= sizeof(xmlXPathCompExpr));
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(cur, 0, sizeof(xmlXPathCompExpr));
    cur->maxStep = 10;
    cur->nbStep = 0;
    cur->steps = (xmlXPathStepOp *) xmlMalloc(cur->maxStep *
                                           sizeof(xmlXPathStepOp));
    if (cur->steps == NULL) {
        xmlXPathErrMemory(NULL, "allocating steps\n");
        xmlFree(cur);
        return(NULL);
    }
    
    return cur;
}

int main(void) {
    /* Make symbolic inputs that could affect the allocation path */
    int malloc_fails;
    klee_make_symbolic(&malloc_fails, sizeof(malloc_fails), "malloc_fails");
    
    /* Assume malloc succeeds for the first allocation to reach line 1023 */
    klee_assume(malloc_fails == 0);
    
    /* Call the target function */
    xmlXPathCompExprPtr result = xmlXPathNewCompExpr();
    
    /* Clean up if allocation succeeded */
    if (result != NULL) {
        if (result->steps != NULL) {
            free(result->steps);
        }
        free(result);
    }
    
    return 0;
}