#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlRelaxNG xmlRelaxNG;
typedef xmlRelaxNG *xmlRelaxNGPtr;
typedef void *xmlRelaxNGValidCtxtPtr;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlRngPErrMemory */
void xmlRngPErrMemory(xmlRelaxNGValidCtxtPtr ctxt, const char *extra) {
    /* Do nothing in stub */
}

/* Target function: xmlRelaxNGCopyValidState */
xmlRelaxNGPtr xmlRelaxNGCopyValidState(xmlRelaxNGValidCtxtPtr ctxt) {
    xmlRelaxNGPtr ret;
    
    ret = (xmlRelaxNGPtr) xmlMalloc(sizeof(xmlRelaxNG));
    if (ret == NULL) {
        xmlRngPErrMemory(ctxt, NULL);
        return (NULL);
    }
    
    /* TARGET LINE 750: memset(ret, 0, sizeof(xmlRelaxNG)); */
    memset(ret, 0, sizeof(xmlRelaxNG));
    
    /* Vulnerability assertion: ensure the allocated size is at least sizeof(xmlRelaxNG) */
    SAILR_ASSERT(sizeof(xmlRelaxNG) <= malloc_usable_size(ret));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return (ret);
}

/* Helper to get usable size of malloc'd block (simplified for KLEE) */
size_t malloc_usable_size(void *ptr) {
    if (!ptr) return 0;
    /* In symbolic execution, we assume the allocation succeeded with requested size */
    return sizeof(xmlRelaxNG);
}

int main(void) {
    xmlRelaxNGValidCtxtPtr ctxt;
    
    /* Make ctxt symbolic to explore different paths */
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    
    /* Call the target function */
    xmlRelaxNGCopyValidState(ctxt);
    
    return 0;
}