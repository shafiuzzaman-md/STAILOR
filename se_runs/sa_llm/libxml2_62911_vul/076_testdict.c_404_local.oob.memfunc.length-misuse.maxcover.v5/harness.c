#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlFree */
void xmlFree(void* ptr) {
    free(ptr);
}

/* Target function from testdict.c */
int main(void) {
    /* Variables from the snippet */
    char** strings1 = NULL;
    char** strings2 = NULL;
    char** test1 = NULL;
    char** test2 = NULL;
    int ret = 0;
    
    /* Symbolic variable for NB_STRINGS_MAX */
    int NB_STRINGS_MAX;
    klee_make_symbolic(&NB_STRINGS_MAX, sizeof(NB_STRINGS_MAX), "NB_STRINGS_MAX");
    
    /* Assume reasonable bounds for NB_STRINGS_MAX to avoid excessive allocation */
    klee_assume(NB_STRINGS_MAX >= 0);
    klee_assume(NB_STRINGS_MAX <= 1024);  /* Reasonable upper bound */
    
    /* Allocate arrays as in the original code */
    strings1 = (char**)xmlMalloc(NB_STRINGS_MAX * sizeof(strings1[0]));
    if (strings1) {
        /* VULNERABILITY ASSERTION: Check that memset size doesn't cause OOB */
        /* The vulnerability is that NB_STRINGS_MAX could be negative or too large */
        SAILR_ASSERT(NB_STRINGS_MAX >= 0 && NB_STRINGS_MAX * sizeof(strings1[0]) <= (size_t)-1);
        
        /* REACHABILITY ASSERTION */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        memset(strings1, 0, NB_STRINGS_MAX * sizeof(strings1[0]));
    }
    
    /* Clean up */
    if (strings1) xmlFree(strings1);
    if (strings2) xmlFree(strings2);
    if (test1) xmlFree(test1);
    if (test2) xmlFree(test2);
    
    return ret;
}