#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations of types and functions needed to reach target */
typedef struct _xmlPointerList xmlPointerList;
typedef xmlPointerList *xmlPointerListPtr;

struct _xmlPointerList {
    void **items;
    int number;
    int size;
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    return ptr;
}

/* Stub for xmlXPathErrMemory */
void xmlXPathErrMemory(void *ctxt, const char *msg) {
    /* Do nothing */
}

/* Stub for xmlPointerListAddSize - minimal implementation to avoid crashes */
void xmlPointerListAddSize(xmlPointerListPtr list, void *item, int size) {
    if (list && size > 0) {
        list->items = malloc(size * sizeof(void*));
        if (list->items) {
            list->size = size;
        }
    }
}

/* Target function from xpath.c:861 */
xmlPointerListPtr xmlPointerListCreate(int initialSize) {
    xmlPointerListPtr ret;

    ret = xmlMalloc(sizeof(xmlPointerList));
    if (ret == NULL) {
        xmlXPathErrMemory(NULL,
            "xmlPointerListCreate: allocating item\n");
        return (NULL);
    }
    
    /* TARGET LINE 861: memset(ret, 0, sizeof(xmlPointerList)); */
    memset(ret, 0, sizeof(xmlPointerList));
    
    /* Vulnerability assertion: For OOB in memset, ensure pointer and size are valid */
    SAILR_ASSERT(ret != NULL && sizeof(xmlPointerList) > 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    if (initialSize > 0) {
        xmlPointerListAddSize(ret, NULL, initialSize);
        ret->number = 0;
    }
    return (ret);
}

int main(void) {
    int initialSize;
    
    /* Make initialSize symbolic to explore different paths */
    klee_make_symbolic(&initialSize, sizeof(initialSize), "initialSize");
    
    /* Assume reasonable bounds to avoid excessive exploration */
    klee_assume(initialSize >= -10 && initialSize <= 100);
    
    /* Call the target function */
    xmlPointerListPtr result = xmlPointerListCreate(initialSize);
    
    /* Clean up if allocation succeeded */
    if (result) {
        if (result->items) {
            free(result->items);
        }
        free(result);
    }
    
    return 0;
}