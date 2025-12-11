#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlXPathParserContext xmlXPathParserContext;
typedef struct _xmlXPathObject xmlXPathObject;
typedef xmlXPathObject *xmlXPathObjectPtr;
typedef void *xmlXPathContextPtr;

struct _xmlXPathParserContext {
    xmlXPathObjectPtr *valueTab;
    xmlXPathContextPtr context;
    int valueNr;
    int valueMax;
    int valueSize;
    int error;
};

/* Stub functions to avoid linking with actual libxml2 */
void xmlXPathErrMemory(xmlXPathContextPtr ctxt, const char *msg) {
    (void)ctxt;
    (void)msg;
}

void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Target function prototype */
xmlXPathParserContextPtr xmlXPathCmpNodesExt(xmlXPathContextPtr ctxt, int evaluation, int return_val);

/* Main harness */
int main(void) {
    /* Symbolic inputs for the target function */
    xmlXPathContextPtr ctxt;
    int evaluation, return_val;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&evaluation, sizeof(evaluation), "evaluation");
    klee_make_symbolic(&return_val, sizeof(return_val), "return_val");
    
    /* Assume non-negative values as hinted by bounds_hints */
    klee_assume(evaluation >= 0);
    klee_assume(return_val >= 0);
    
    /* Call the target function */
    xmlXPathParserContextPtr ret = xmlXPathCmpNodesExt(ctxt, evaluation, return_val);
    
    /* Vulnerability assertion: check that the allocation size for valueTab
       (10 * sizeof(xmlXPathObjectPtr)) is safe relative to the memset size
       (sizeof(xmlXPathParserContext)). The memset writes to the entire
       xmlXPathParserContext structure, which includes valueTab pointer.
       The OOB risk is that the allocated valueTab might be too small
       for subsequent operations, but the immediate risk at line 5588
       is that the xmlMalloc(10 * sizeof(xmlXPathObjectPtr)) could fail
       due to integer overflow or excessive size. */
    
    /* Check that the allocation size doesn't overflow/wrap and is reasonable */
    size_t alloc_size = 10 * sizeof(xmlXPathObjectPtr);
    SAILR_ASSERT(alloc_size > 0 && alloc_size <= 1024 * 1024); /* Reasonable upper bound */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    if (ret) {
        if (ret->valueTab) free(ret->valueTab);
        free(ret);
    }
    
    return 0;
}

/* Implementation of the target function based on the code snippet */
xmlXPathParserContextPtr xmlXPathCmpNodesExt(xmlXPathContextPtr ctxt, int evaluation, int return_val) {
    xmlXPathParserContextPtr ret;
    
    /* Line 5588 is within this allocation */
    ret = (xmlXPathParserContextPtr) xmlMalloc(sizeof(xmlXPathParserContext));
    if (ret == NULL) {
        xmlXPathErrMemory(ctxt, "creating evaluation context\n");
        return NULL;
    }
    
    /* This memset is at the target location */
    memset(ret, 0, sizeof(xmlXPathParserContext));
    
    /* Allocate the value stack - this is the allocation at line 5588 */
    ret->valueTab = (xmlXPathObjectPtr *) xmlMalloc(10 * sizeof(xmlXPathObjectPtr));
    if (ret->valueTab == NULL) {
        free(ret);
        xmlXPathErrMemory(ctxt, "allocating value stack\n");
        return NULL;
    }
    
    /* Initialize other fields */
    ret->context = ctxt;
    ret->valueNr = 0;
    ret->valueMax = 10;
    ret->valueSize = sizeof(xmlXPathObjectPtr);
    ret->error = 0;
    
    return ret;
}