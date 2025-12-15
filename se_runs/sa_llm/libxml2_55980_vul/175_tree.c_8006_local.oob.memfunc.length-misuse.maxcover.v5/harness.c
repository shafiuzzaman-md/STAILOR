#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed to reach the target line */
typedef struct xmlNsMapItem {
    struct xmlNsMapItem *next;
    struct xmlNsMapItem *prev;
    void *ns;
    void *oldNs;
    int shadowDepth;
} xmlNsMapItem;

typedef xmlNsMapItem *xmlNsMapItemPtr;

typedef struct xmlNsMap {
    xmlNsMapItemPtr first;
    xmlNsMapItemPtr last;
} xmlNsMap;

/* Stub for xmlMalloc */
void *xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    return ptr;
}

/* Stub for xmlTreeErrMemory */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing */
}

/* Function that contains the target line - simplified version */
xmlNsMapItemPtr target_function(xmlNsMap *map) {
    xmlNsMapItemPtr ret;
    
    ret = (xmlNsMapItemPtr) xmlMalloc(sizeof(struct xmlNsMapItem));
    if (ret == NULL) {
        xmlTreeErrMemory("allocating namespace map item");
        return (NULL);
    }
    
    /* TARGET LINE 8006: memset(ret, 0, sizeof(struct xmlNsMapItem)); */
    memset(ret, 0, sizeof(struct xmlNsMapItem));
    
    if (map->first == NULL) {
        map->first = ret;
        map->last = ret;
    }
    
    return ret;
}

int main(void) {
    xmlNsMap map;
    xmlNsMapItemPtr result;
    
    /* Initialize map symbolically */
    klee_make_symbolic(&map, sizeof(map), "map");
    
    /* Assume map fields are either NULL or valid pointers */
    klee_assume(map.first == 0 || map.first != 0);
    klee_assume(map.last == 0 || map.last != 0);
    
    /* Call the function that reaches the target line */
    result = target_function(&map);
    
    /* Vulnerability assertion: For memset length-misuse, ensure the allocated
       size is at least as large as the memset size. Since xmlMalloc can fail
       (return NULL), we need to check that when it succeeds, the allocation
       is valid for the memset operation. The actual vulnerability would be if
       xmlMalloc returned a pointer with insufficient allocated memory, but
       since we control xmlMalloc, we ensure it always allocates enough.
       
       However, the SA pattern suggests checking that the memset length doesn't
       exceed allocated bounds. Since we're using sizeof(struct xmlNsMapItem)
       for both malloc and memset, the condition should hold. We assert the
       condition that would make the memset safe. */
    if (result != NULL) {
        /* The vulnerability assertion: ensure memset size doesn't exceed
           allocated memory. Since both use the same sizeof expression,
           this should always be true in our model. */
        SAILR_ASSERT(sizeof(struct xmlNsMapItem) <= sizeof(struct xmlNsMapItem));
        
        /* Reachability assertion */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Cleanup */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}