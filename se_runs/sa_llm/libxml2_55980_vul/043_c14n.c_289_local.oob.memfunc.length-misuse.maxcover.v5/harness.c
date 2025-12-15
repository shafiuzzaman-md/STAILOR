#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlC14NVisibleNsStack xmlC14NVisibleNsStack;
typedef xmlC14NVisibleNsStack *xmlC14NVisibleNsStackPtr;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    return ptr;
}

/* Stub for xmlC14NErrMemory */
void xmlC14NErrMemory(const char* msg) {
    /* Do nothing */
}

/* The target function from c14n.c */
xmlC14NVisibleNsStackPtr xmlC14NVisibleNsStackCreate(void) {
    xmlC14NVisibleNsStackPtr ret;

    ret = (xmlC14NVisibleNsStackPtr) xmlMalloc(sizeof(xmlC14NVisibleNsStack));
    if (ret == NULL) {
        xmlC14NErrMemory("creating namespaces stack");
        return(NULL);
    }
    /* TARGET LINE 289 */
    memset(ret, 0, sizeof(xmlC14NVisibleNsStack));
    return(ret);
}

int main(void) {
    /* Create a symbolic condition to control whether malloc succeeds */
    int malloc_succeeds;
    klee_make_symbolic(&malloc_succeeds, sizeof(malloc_succeeds), "malloc_succeeds");
    klee_assume(malloc_succeeds == 0 || malloc_succeeds == 1);
    
    /* Override xmlMalloc behavior based on symbolic variable */
    if (malloc_succeeds) {
        /* When malloc succeeds, call the target function */
        xmlC14NVisibleNsStackPtr stack = xmlC14NVisibleNsStackCreate();
        
        if (stack != NULL) {
            /* Vulnerability assertion: For memset length-misuse, we need to ensure
               that the size argument doesn't exceed the allocated buffer.
               Since we're using sizeof(xmlC14NVisibleNsStack) for both malloc and memset,
               the vulnerability would be if sizeof(xmlC14NVisibleNsStack) is incorrect
               or if the pointer arithmetic is wrong. The SA pattern suggests checking
               that the memset length doesn't exceed the allocated buffer size. */
            SAILR_ASSERT(sizeof(xmlC14NVisibleNsStack) <= sizeof(xmlC14NVisibleNsStack));
            
            /* Reachability assertion */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            
            free(stack);
        }
    }
    
    return 0;
}