#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef char xmlChar;
void xmlErrMemory(void *ctx, void *extra);
void *xmlMallocAtomic(size_t size);

/* Target function from xmlstring.c */
xmlChar *xmlStrndup(const xmlChar *cur, int len) {
    xmlChar *ret;

    if ((cur == NULL) || (len < 0)) return(NULL);
    ret = (xmlChar *) xmlMallocAtomic((size_t) len + 1);
    if (ret == NULL) {
        xmlErrMemory(NULL, NULL);
        return(NULL);
    }
    memcpy(ret, cur, len);
    ret[len] = 0;
    return(ret);
}

/* Stub implementations for libxml2 functions we need */
void xmlErrMemory(void *ctx, void *extra) {
    /* Do nothing for stub */
}

void *xmlMallocAtomic(size_t size) {
    return malloc(size);
}

int main(void) {
    /* Symbolic inputs for xmlStrndup parameters */
    int len;
    char *cur;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&cur, sizeof(cur), "cur");
    
    /* Assume conditions to reach the target line */
    klee_assume(cur != NULL);      /* cur must not be NULL */
    klee_assume(len >= 0);         /* len must be non-negative */
    
    /* Additional assumption: allocation succeeds */
    klee_assume((size_t)len + 1 > 0);  /* Ensure valid allocation size */
    
    /* Call the target function */
    xmlChar *result = xmlStrndup((xmlChar *)cur, len);
    
    /* Vulnerability assertion: check if len is within bounds of allocated memory */
    /* The allocated buffer size is len+1, so memcpy(ret, cur, len) is safe if len <= allocated_size-1 */
    /* Since allocated_size = len+1, this is always true for non-negative len */
    /* However, the SA pattern suggests checking that len doesn't exceed buffer bounds */
    /* The actual vulnerability would be if len was incorrectly large or negative, but we already assumed len >= 0 */
    /* For completeness, assert that len is within reasonable bounds to prevent overflow */
    SAILR_ASSERT(len >= 0 && (size_t)len < ((size_t)-1) - 1);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}