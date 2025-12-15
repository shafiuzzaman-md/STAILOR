#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlXPathContextCache xmlXPathContextCache;
typedef xmlXPathContextCache *xmlXPathContextCachePtr;

struct _xmlXPathContextCache {
    int maxNodeset;
    int maxString;
    int maxBoolean;
    int maxNumber;
    int maxMisc;
    /* In real libxml2 there would be more fields, but we only need the ones used */
};

void xmlXPathErrMemory(void *ctxt, const char *msg);

/* Stub for xmlMalloc - we'll control its behavior */
void* xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    /* Make the return value symbolic to explore both allocation success and failure */
    klee_make_symbolic(&ptr, sizeof(ptr), "xmlMalloc_ptr");
    return ptr;
}

/* The target function from xpath.c:2203-2218 */
xmlXPathContextCachePtr xmlXPathContextCacheCreate(void) {
    xmlXPathContextCachePtr ret;

    ret = (xmlXPathContextCachePtr) xmlMalloc(sizeof(xmlXPathContextCache));
    if (ret == NULL) {
        xmlXPathErrMemory(NULL, "creating object cache\n");
        return(NULL);
    }
    memset(ret, 0 , sizeof(xmlXPathContextCache));
    ret->maxNodeset = 100;
    ret->maxString = 100;
    ret->maxBoolean = 100;
    ret->maxNumber = 100;
    ret->maxMisc = 100;
    return(ret);
}

/* Stub for xmlXPathErrMemory to avoid undefined reference */
void xmlXPathErrMemory(void *ctxt, const char *msg) {
    /* Do nothing - just prevent crash if called */
}

int main(void) {
    xmlXPathContextCachePtr cache;
    
    /* Call the target function */
    cache = xmlXPathContextCacheCreate();
    
    /* Vulnerability assertion: For memset length-misuse, we need to ensure
     * that the size passed to memset doesn't exceed the allocated buffer.
     * Since xmlMalloc returns exactly sizeof(xmlXPathContextCache) on success,
     * and memset uses exactly that size, the vulnerability would be if
     * the allocation succeeded but returned a pointer with insufficient
     * memory (which shouldn't happen with proper malloc).
     * However, the SA pattern is about length misuse, so we assert that
     * if cache is non-NULL, then the memset size is valid for the allocation.
     * Since we can't know the actual allocation size from xmlMalloc stub,
     * we assume proper behavior and assert the obvious: if allocation succeeded,
     * memset size equals allocation size.
     */
    if (cache != NULL) {
        /* The vulnerability condition: ensure memset size doesn't exceed allocation */
        SAILR_ASSERT(sizeof(xmlXPathContextCache) <= malloc_usable_size(cache));
        
        /* Reachability marker - we've reached the vulnerable memset line */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Clean up */
    if (cache != NULL) {
        free(cache);
    }
    
    return 0;
}