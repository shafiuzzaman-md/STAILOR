#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlSchemaItemList xmlSchemaItemList;
typedef xmlSchemaItemList *xmlSchemaItemListPtr;

struct _xmlSchemaItemList {
    void *items;
    int itemCount;
    int itemSize;
    int itemMax;
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "xmlMalloc_buffer");
    }
    return ptr;
}

/* Stub for xmlSchemaPErrMemory */
void xmlSchemaPErrMemory(void* ctxt, const char* msg, const char* extra) {
    /* Do nothing in harness */
}

/* The target function from xmlschemas.c:3389-3397 */
static xmlSchemaItemListPtr xmlSchemaItemListCreate(void) {
    xmlSchemaItemListPtr ret;

    ret = xmlMalloc(sizeof(xmlSchemaItemList));
    if (ret == NULL) {
        xmlSchemaPErrMemory(NULL,
            "allocating an item list structure", NULL);
        return (NULL);
    }
    /* TARGET LINE 3395 - memset with potentially symbolic/unbounded size */
    memset(ret, 0, sizeof(xmlSchemaItemList));
    
    /* VULNERABILITY ASSERTION: Check that the memset size is bounded correctly */
    SAILR_ASSERT(sizeof(xmlSchemaItemList) <= 1024); /* Reasonable upper bound for struct */
    
    /* REACHABILITY ASSERTION */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return (ret);
}

/* Entry point */
int main(void) {
    xmlSchemaItemListPtr list;
    
    /* Create symbolic conditions that might affect xmlMalloc */
    int malloc_success;
    klee_make_symbolic(&malloc_success, sizeof(malloc_success), "malloc_success");
    klee_assume(malloc_success == 0 || malloc_success == 1);
    
    /* Force path where malloc succeeds to reach target line */
    if (malloc_success) {
        list = xmlSchemaItemListCreate();
        if (list != NULL) {
            free(list);
        }
    }
    
    return 0;
}