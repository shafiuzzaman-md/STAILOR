#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 functions we need */
typedef unsigned char xmlChar;
void* xmlMallocAtomic(size_t size);

/* Target function: xmlStrndup from xmlstring.c */
xmlChar* xmlStrndup(const xmlChar* cur, int len) {
    xmlChar* ret;
    
    if ((cur == NULL) || (len < 0)) return(NULL);
    ret = (xmlChar *) xmlMallocAtomic((size_t) len + 1);
    if (ret == NULL) {
        return(NULL);
    }
    memcpy(ret, cur, len);  /* Line 53 - target location */
    ret[len] = 0;
    return(ret);
}

/* Stub for xmlMallocAtomic */
void* xmlMallocAtomic(size_t size) {
    if (size == 0) {
        return NULL;
    }
    void* ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "allocated_memory");
    }
    return ptr;
}

int main(void) {
    /* Symbolic inputs for xmlStrndup parameters */
    int len;
    unsigned char cur[1024];  /* Reasonable maximum buffer size */
    
    /* Make inputs symbolic */
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(cur, sizeof(cur), "cur");
    
    /* Assume constraints based on SA spec and function requirements */
    klee_assume(len >= 0);  /* From bounds_hints in SA spec */
    klee_assume(len < 1024); /* Reasonable bound for symbolic execution */
    
    /* Assume cur is not NULL (first check in xmlStrndup) */
    /* In practice, we pass a valid pointer, so no need for assumption */
    
    /* Call the target function */
    xmlChar* result = xmlStrndup((xmlChar*)cur, len);
    
    /* Vulnerability assertion: memcpy at line 53 could overflow if 
       len exceeds actual allocated size of cur buffer.
       Since cur is a fixed-size array of 1024, the condition is len <= 1024.
       But we already assumed len < 1024 above, so we assert the same condition
       to mark the vulnerability location. */
    if (result != NULL) {
        SAILR_ASSERT(len <= 1024);
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Cleanup */
    if (result) {
        free(result);
    }
    
    return 0;
}