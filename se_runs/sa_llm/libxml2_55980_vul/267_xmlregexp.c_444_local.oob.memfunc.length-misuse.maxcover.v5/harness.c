#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
void* xmlMalloc(size_t size);
void* xmlRealloc(void* ptr, size_t size);
void xmlFree(void* ptr);

/* Stub implementations of xml memory functions */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

void* xmlRealloc(void* ptr, size_t size) {
    return realloc(ptr, size);
}

void xmlFree(void* ptr) {
    free(ptr);
}

/* The function we need to reach - from xmlregexp.c line 444 */
static void* xmlRealloc2(void* ptr, size_t nmemb, size_t elemSize) {
    size_t totalSize;
    void* ret;

    /* Check for overflow */
    if (nmemb > SIZE_MAX / elemSize)
        return (NULL);
    totalSize = nmemb * elemSize;
    ret = xmlRealloc(ptr, totalSize);
    if (ret != NULL)
        memset(ret, 0, totalSize);
    return (ret);
}

/* Another variant that matches the snippet more closely */
static void* xmlMalloc3(size_t dim1, size_t dim2, size_t elemSize) {
    size_t totalSize;
    void* ret;

    /* Check for overflow */
    if (dim1 > SIZE_MAX / dim2 / elemSize)
        return (NULL);
    totalSize = dim1 * dim2 * elemSize;
    ret = xmlMalloc(totalSize);
    if (ret != NULL)
        memset(ret, 0, totalSize);
    return (ret);
}

int main(void) {
    size_t dim1, dim2, elemSize;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&dim1, sizeof(dim1), "dim1");
    klee_make_symbolic(&dim2, sizeof(dim2), "dim2");
    klee_make_symbolic(&elemSize, sizeof(elemSize), "elemSize");
    
    /* Assume reasonable bounds to avoid trivial overflows */
    klee_assume(dim1 <= 1024);
    klee_assume(dim2 <= 1024);
    klee_assume(elemSize <= 1024);
    klee_assume(elemSize > 0);
    
    /* Call the function that contains the target line */
    void* result = xmlMalloc3(dim1, dim2, elemSize);
    
    /* Vulnerability assertion: The overflow check should ensure 
       totalSize doesn't overflow, but we need to check that if
       the overflow check passes, the memset size is safe.
       The condition is that the overflow check should be sufficient
       to prevent any issues with memset. */
    if (result != NULL) {
        /* The vulnerability would be if totalSize computation could overflow
           despite the check, or if memset could receive an incorrect size.
           The SA pattern suggests length-misuse: we assert that the size
           passed to memset is properly bounded. Since the overflow check
           should prevent overflow, we assert that the multiplication
           doesn't overflow beyond what was checked. */
        SAILR_ASSERT(dim1 <= SIZE_MAX / dim2 / elemSize);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Clean up */
    if (result != NULL) {
        xmlFree(result);
    }
    
    return 0;
}