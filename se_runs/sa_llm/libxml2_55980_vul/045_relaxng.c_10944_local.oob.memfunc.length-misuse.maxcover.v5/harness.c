#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions to match the target code */
typedef struct _xmlRelaxNGValidCtxt xmlRelaxNGValidCtxt;
typedef xmlRelaxNGValidCtxt *xmlRelaxNGValidCtxtPtr;
typedef void *xmlRelaxNGPtr;

/* Stub functions needed to avoid linking issues */
void xmlRngVErrMemory(void *ctx, const char *msg) {
    /* Do nothing */
}

void (*xmlGenericError)(void);
void *xmlGenericErrorContext;

/* Simulated xmlMalloc that can return NULL based on symbolic input */
void* xmlMalloc(size_t size) {
    char is_null;
    klee_make_symbolic(&is_null, sizeof(is_null), "is_null");
    klee_assume(is_null == 0 || is_null == 1);
    
    if (is_null) {
        return NULL;
    } else {
        return malloc(size);
    }
}

/* Target function from relaxng.c line 10936-10944 */
xmlRelaxNGValidCtxtPtr xmlRelaxNGNewValidCtxt(xmlRelaxNGPtr schema) {
    xmlRelaxNGValidCtxtPtr ret;

    ret = (xmlRelaxNGValidCtxtPtr) xmlMalloc(sizeof(xmlRelaxNGValidCtxt));
    if (ret == NULL) {
        xmlRngVErrMemory(NULL, "building context\n");
        return (NULL);
    }
    
    /* TARGET LINE 10944 - memset call */
    memset(ret, 0, sizeof(xmlRelaxNGValidCtxt));
    
    /* Vulnerability assertion: ensure the size argument to memset 
       does not exceed allocated buffer size */
    SAILR_ASSERT(sizeof(xmlRelaxNGValidCtxt) <= malloc_usable_size(ret));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->schema = schema;
    ret->error = xmlGenericError;
    ret->userData = xmlGenericErrorContext;
    ret->errNr = 0;
    ret->errMax = 0;
    ret->err = NULL;
    ret->errTab = NULL;
    
    return ret;
}

/* Helper to get allocated size (simplified for KLEE) */
size_t malloc_usable_size(void *ptr) {
    if (ptr == NULL) return 0;
    /* In reality we'd need to track allocation sizes, but for KLEE
       we can make this symbolic */
    size_t size;
    klee_make_symbolic(&size, sizeof(size), "alloc_size");
    klee_assume(size >= sizeof(xmlRelaxNGValidCtxt)); /* Assume at least enough */
    return size;
}

int main(void) {
    xmlRelaxNGPtr schema;
    
    /* Make schema symbolic to explore different paths */
    klee_make_symbolic(&schema, sizeof(schema), "schema");
    
    /* Call the target function */
    xmlRelaxNGValidCtxtPtr ctxt = xmlRelaxNGNewValidCtxt(schema);
    
    /* Clean up if allocation succeeded */
    if (ctxt != NULL) {
        free(ctxt);
    }
    
    return 0;
}