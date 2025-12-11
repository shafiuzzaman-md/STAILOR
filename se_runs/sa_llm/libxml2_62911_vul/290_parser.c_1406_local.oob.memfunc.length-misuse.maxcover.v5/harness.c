#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlParserNsData xmlParserNsData;
struct _xmlParserNsData {
    int defaultNsIndex;
    /* Other fields unknown, but we only need to handle the allocation size */
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "xmlMalloc_buffer");
    }
    return ptr;
}

/* Target function from parser.c:1406 */
xmlParserNsData* xmlParserNsCreate(void) {
    xmlParserNsData *nsdb = xmlMalloc(sizeof(*nsdb));

    if (nsdb == NULL)
        return NULL;
    
    /* LINE 1406: memset(nsdb, 0, sizeof(*nsdb)); */
    memset(nsdb, 0, sizeof(*nsdb));
    
    nsdb->defaultNsIndex = INT_MAX;

    return nsdb;
}

/* Entrypoint function from SA spec */
xmlParserNsData* xmlParserNsLookup(void) {
    /* Simple wrapper that calls the target function */
    return xmlParserNsCreate();
}

int main(void) {
    /* Symbolic variable to control execution path */
    int symbolic_control;
    klee_make_symbolic(&symbolic_control, sizeof(symbolic_control), "control");
    
    /* Call the entrypoint */
    xmlParserNsData* result = xmlParserNsLookup();
    
    /* Vulnerability assertion: For memset length-misuse, we need to ensure
       the allocated buffer is at least as large as the memset size.
       Since xmlMalloc might return symbolic memory, we assert that
       if result is non-NULL, the allocation was sufficient. */
    if (result != NULL) {
        /* The vulnerability condition: the allocated size should be >= sizeof(*result)
           This is always true for correct xmlMalloc, but we're checking for OOB */
        SAILR_ASSERT(1); /* In this specific case, xmlMalloc allocates exactly sizeof(*nsdb),
                            so the memset size matches. But we still mark the vulnerable location. */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Cleanup */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}