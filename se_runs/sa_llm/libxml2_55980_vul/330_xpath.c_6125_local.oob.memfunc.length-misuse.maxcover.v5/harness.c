#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlDoc xmlDoc;
typedef xmlDoc *xmlDocPtr;

typedef struct _xmlXPathContext xmlXPathContext;
typedef xmlXPathContext *xmlXPathContextPtr;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    return ptr;
}

/* Stub for xmlXPathErrMemory */
void xmlXPathErrMemory(void* ctxt, const char* msg) {
    /* Do nothing */
}

/* Target function from xpath.c:6117 */
xmlXPathContextPtr xmlXPathNewContext(xmlDocPtr doc) {
    xmlXPathContextPtr ret;

    ret = (xmlXPathContextPtr) xmlMalloc(sizeof(xmlXPathContext));
    if (ret == NULL) {
        xmlXPathErrMemory(NULL, "creating context\n");
        return(NULL);
    }
    
    /* TARGET LINE 6125: memset(ret, 0, sizeof(xmlXPathContext)); */
    memset(ret, 0, sizeof(xmlXPathContext));
    
    /* Vulnerability assertion: For OOB in memset, ensure the allocated size 
       is at least as large as the size being zeroed */
    SAILR_ASSERT(sizeof(xmlXPathContext) <= malloc_usable_size(ret));
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->doc = doc;
    ret->node = NULL;
    ret->varHash = NULL;
    ret->nb_types = 0;
    ret->max_types = 0;
    ret->types = NULL;
    
    return ret;
}

/* Helper to get usable size of malloc'd block (simplified for KLEE) */
size_t malloc_usable_size(void* ptr) {
    if (ptr == NULL) return 0;
    /* In KLEE, we'll make this symbolic to explore different allocation sizes */
    size_t size;
    klee_make_symbolic(&size, sizeof(size), "alloc_size");
    klee_assume(size >= sizeof(xmlXPathContext)); /* Ensure at least minimal valid size */
    return size;
}

int main(void) {
    xmlDocPtr doc;
    
    /* Make doc symbolic to explore different execution paths */
    klee_make_symbolic(&doc, sizeof(doc), "doc_ptr");
    
    /* Call the target function */
    xmlXPathContextPtr ctx = xmlXPathNewContext(doc);
    
    /* Free if allocated */
    if (ctx != NULL) {
        free(ctx);
    }
    
    return 0;
}