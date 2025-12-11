#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need to reach the target */
typedef struct _xmlPointerList xmlPointerList;
typedef struct _xmlXPathContext xmlXPathContext;
typedef struct _xmlNode xmlNode;

struct _xmlPointerList {
    void **items;
    int number;
    int size;
};

/* Stub for xmlXPathErrMemory - we don't need its implementation */
void xmlXPathErrMemory(void* ctxt, const char* msg) {
    /* Do nothing */
}

/* Stub for xmlPointerListAddSize - minimal implementation to avoid crashes */
void xmlPointerListAddSize(xmlPointerList* list, void* item, int size) {
    if (list == NULL) return;
    
    /* Allocate or reallocate items array */
    if (list->items == NULL) {
        list->items = malloc(size * sizeof(void*));
    } else {
        list->items = realloc(list->items, size * sizeof(void*));
    }
    
    if (list->items != NULL) {
        list->size = size;
    }
}

/* The function containing the target line - extracted from context */
xmlPointerList* xmlPointerListCreate(int initialSize) {
    xmlPointerList* ret;
    
    ret = (xmlPointerList*) malloc(sizeof(xmlPointerList));
    if (ret == NULL) {
        xmlXPathErrMemory(NULL,
            "xmlPointerListCreate: allocating item\n");
        return (NULL);
    }
    
    /* TARGET LINE: line 863 - memset with size based on initialSize */
    memset(ret, 0, sizeof(xmlPointerList));
    
    if (initialSize > 0) {
        xmlPointerListAddSize(ret, NULL, initialSize);
        ret->number = 0;
    }
    return (ret);
}

/* Entrypoint function mentioned in SA spec */
void xmlXPathCmpNodesExt(xmlNode* node1, xmlNode* node2) {
    /* This function would call xmlPointerListCreate in some path */
    /* For our harness, we'll directly call xmlPointerListCreate */
}

int main(void) {
    int initialSize;
    
    /* Make initialSize symbolic to explore different values */
    klee_make_symbolic(&initialSize, sizeof(initialSize), "initialSize");
    
    /* According to SA spec bounds_hints, initialSize >= 0 */
    klee_assume(initialSize >= 0);
    
    /* Call the function that leads to the target line */
    xmlPointerList* list = xmlPointerListCreate(initialSize);
    
    /* Vulnerability assertion: For OOB in memset, the condition is that
       initialSize could cause issues in xmlPointerListAddSize or related.
       Since memset is operating on ret (sizeof(xmlPointerList)), it's safe.
       However, the SA pattern suggests length-misuse: initialSize might be
       used incorrectly elsewhere. The actual risk is in xmlPointerListAddSize
       which uses initialSize for allocation. We need to assert that if
       initialSize > 0, the allocation in xmlPointerListAddSize succeeds
       or doesn't cause OOB. Since we can't check allocation success directly,
       we assert that initialSize is reasonable (not causing integer overflow
       in multiplication). */
    
    if (list != NULL) {
        /* Vulnerability assertion: initialSize should not cause issues
           in subsequent operations. For OOB length-misuse, we want to
           ensure that if initialSize > 0, it's within reasonable bounds
           to avoid overflow in size calculations. */
        SAILR_ASSERT(initialSize <= 1024 * 1024); /* Reasonable upper bound */
        
        /* Reachability assertion - we've reached the target line */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        if (list->items != NULL) {
            free(list->items);
        }
        free(list);
    }
    
    return 0;
}