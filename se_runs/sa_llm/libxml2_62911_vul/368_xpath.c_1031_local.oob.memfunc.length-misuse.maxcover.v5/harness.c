#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub types to match libxml2 structures */
typedef struct _xmlXPathStepOp xmlXPathStepOp;
struct _xmlXPathStepOp {
    int dummy;
};

typedef struct _xmlXPathCompExpr xmlXPathCompExpr;
struct _xmlXPathCompExpr {
    xmlXPathStepOp *steps;
    int maxStep;
    int last;
};

/* Stub functions referenced in the snippet */
void xmlXPathErrMemory(void *ctxt, const char *msg) {
    (void)ctxt;
    (void)msg;
}

void xmlFree(void *ptr) {
    free(ptr);
}

/* Target function - reconstructed from snippet */
xmlXPathCompExpr* xmlXPathCmpNodesExt(void) {
    xmlXPathCompExpr *cur;
    
    cur = (xmlXPathCompExpr*)malloc(sizeof(xmlXPathCompExpr));
    if (cur == NULL) {
        return NULL;
    }
    
    /* Symbolic maxStep - this is the critical variable */
    klee_make_symbolic(&cur->maxStep, sizeof(cur->maxStep), "maxStep");
    
    /* Assume maxStep >= 0 as per bounds_hints */
    klee_assume(cur->maxStep >= 0);
    
    cur->steps = (xmlXPathStepOp*)malloc(cur->maxStep * sizeof(xmlXPathStepOp));
    if (cur->steps == NULL) {
        xmlXPathErrMemory(NULL, "allocating steps\n");
        xmlFree(cur);
        return NULL;
    }
    
    /* TARGET LINE 1031: memset(cur->steps, 0, cur->maxStep * sizeof(xmlXPathStepOp)); */
    /* Vulnerability assertion: ensure allocation size matches memset size */
    SAILR_ASSERT(cur->maxStep * sizeof(xmlXPathStepOp) <= malloc_usable_size(cur->steps));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(cur->steps, 0, cur->maxStep * sizeof(xmlXPathStepOp));
    cur->last = -1;
    return cur;
}

/* Helper to get malloc usable size (simplified for KLEE) */
size_t malloc_usable_size(void *ptr) {
    if (ptr == NULL) return 0;
    /* In symbolic execution, we return a symbolic size */
    size_t size;
    klee_make_symbolic(&size, sizeof(size), "alloc_size");
    klee_assume(size > 0);  /* Allocation succeeded, so size > 0 */
    return size;
}

int main(void) {
    xmlXPathCompExpr *expr;
    
    expr = xmlXPathCmpNodesExt();
    
    /* Cleanup if allocation succeeded */
    if (expr != NULL) {
        if (expr->steps != NULL) {
            free(expr->steps);
        }
        free(expr);
    }
    
    return 0;
}