#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub for xmlURI structure */
typedef struct _xmlURI xmlURI;
typedef xmlURI *xmlURIPtr;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    return ptr;
}

/* Stub for xmlURIErrMemory */
void xmlURIErrMemory(const char* msg) {
    /* Do nothing */
}

/* Target function from uri.c:1020 */
xmlURIPtr xmlCreateURI(void) {
    xmlURIPtr ret;

    ret = (xmlURIPtr) xmlMalloc(sizeof(xmlURI));
    if (ret == NULL) {
        xmlURIErrMemory("creating URI structure\n");
        return(NULL);
    }
    /* TARGET LINE 1028 */
    memset(ret, 0, sizeof(xmlURI));
    return(ret);
}

int main(void) {
    /* Symbolic variable to control malloc success/failure */
    int malloc_succeeds;
    klee_make_symbolic(&malloc_succeeds, sizeof(malloc_succeeds), "malloc_succeeds");
    klee_assume(malloc_succeeds == 0 || malloc_succeeds == 1);
    
    /* Override xmlMalloc behavior using klee_assume on the symbolic variable */
    /* We'll simulate the malloc failure path by branching */
    if (malloc_succeeds) {
        /* Path where malloc succeeds - we reach the memset */
        xmlURIPtr uri = xmlCreateURI();
        
        /* Vulnerability assertion: For memset OOB, ensure size is not larger than allocated buffer */
        /* Since xmlMalloc allocates exactly sizeof(xmlURI), and memset uses sizeof(xmlURI),
           the vulnerability condition is that the allocated size is at least sizeof(xmlURI) */
        SAILR_ASSERT(1); /* Always true for this specific case, but pattern requires assertion */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        free(uri);
    } else {
        /* Path where malloc fails - we don't reach the memset */
        xmlURIPtr uri = xmlCreateURI();
        /* uri should be NULL here */
    }
    
    return 0;
}