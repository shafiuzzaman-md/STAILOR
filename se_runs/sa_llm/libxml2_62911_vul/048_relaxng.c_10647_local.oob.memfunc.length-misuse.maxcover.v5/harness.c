#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlRelaxNGValidCtxt xmlRelaxNGValidCtxt;
typedef xmlRelaxNGValidCtxt *xmlRelaxNGValidCtxtPtr;
typedef struct _xmlRelaxNG xmlRelaxNG;
typedef xmlRelaxNG *xmlRelaxNGPtr;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlRngVErrMemory */
void xmlRngVErrMemory(void *ctx, const char *msg) {
    /* Do nothing */
}

/* Stub for xmlGenericError */
void xmlGenericError(void *ctx, const char *msg, ...) {
    /* Do nothing */
}

/* Stub for xmlGenericErrorContext */
void* xmlGenericErrorContext = NULL;

/* Target function: xmlRelaxNGNewValidCtxt (inferred from context) */
xmlRelaxNGValidCtxtPtr xmlRelaxNGNewValidCtxt(xmlRelaxNGPtr schema) {
    xmlRelaxNGValidCtxtPtr ret;
    
    ret = (xmlRelaxNGValidCtxtPtr) xmlMalloc(sizeof(xmlRelaxNGValidCtxt));
    if (ret == NULL) {
        xmlRngVErrMemory(NULL, "building context\n");
        return (NULL);
    }
    
    /* TARGET LINE 10647: memset(ret, 0, sizeof(xmlRelaxNGValidCtxt)); */
    /* Vulnerability assertion: ensure allocation size is sufficient for memset */
    SAILR_ASSERT(sizeof(xmlRelaxNGValidCtxt) <= malloc_usable_size(ret));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(ret, 0, sizeof(xmlRelaxNGValidCtxt));
    ret->schema = schema;
    ret->error = xmlGenericError;
    ret->userData = xmlGenericErrorContext;
    ret->errNr = 0;
    ret->errMax = 0;
    
    return ret;
}

/* Helper to get usable size of allocation (simplified for KLEE) */
size_t malloc_usable_size(void *ptr) {
    if (!ptr) return 0;
    /* In symbolic execution, we assume the allocation is at least as large as requested */
    return __builtin_object_size(ptr, 0);
}

int main(void) {
    xmlRelaxNGPtr schema;
    
    /* Make schema symbolic to explore different paths */
    klee_make_symbolic(&schema, sizeof(schema), "schema");
    
    /* Assume schema is either NULL or valid pointer */
    klee_assume(schema == 0 || schema != 0);
    
    /* Call the target function */
    xmlRelaxNGValidCtxtPtr ctxt = xmlRelaxNGNewValidCtxt(schema);
    
    /* Clean up if allocation succeeded */
    if (ctxt != NULL) {
        free(ctxt);
    }
    
    return 0;
}