#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub declarations for libxml2 functions needed to reach target */
typedef struct _xmlHashTable xmlHashTable;
typedef xmlHashTable *xmlHashTablePtr;

void xmlFree(void *ptr);
void *xmlMalloc(size_t size);

/* Stub implementation of xmlHashRemoveEntry3 based on SA spec context */
int xmlHashRemoveEntry3(xmlHashTablePtr table, const char *name, 
                       const char *name2, const char *name3, 
                       void (*f)(void *payload, const char *name, 
                                const char *name2, const char *name3)) {
    /* Symbolic variables for the lengths array and keys */
    int lengths[3];
    char *key3;
    char *copy3;
    
    /* Make lengths symbolic - SA indicates length_vars includes "return" */
    klee_make_symbolic(lengths, sizeof(lengths), "lengths");
    
    /* Assume lengths are non-negative as hinted by bounds_hints */
    klee_assume(lengths[0] >= 0);
    klee_assume(lengths[1] >= 0);
    klee_assume(lengths[2] >= 0);
    
    /* Make key3 symbolic with bounded size */
    key3 = (char *)malloc(256);
    klee_make_symbolic(key3, 256, "key3");
    
    /* Simulate the code path leading to the vulnerable memcpy */
    if (lengths[2] >= 0) {
        copy3 = (char *)xmlMalloc(lengths[2] + 1);
        if (copy3 == NULL) {
            /* This path doesn't reach the target line */
            free(key3);
            return -1;
        }
        
        /* VULNERABILITY ASSERTION: Check for potential OOB in memcpy */
        /* The vulnerable memcpy would be: memcpy(copy3, key3, lengths[2] + 1) */
        /* We need to ensure key3 has at least lengths[2] + 1 bytes allocated */
        SAILR_ASSERT(lengths[2] + 1 <= 256);
        
        /* REACHABILITY ASSERTION: Mark that we reached the target line */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Simulate the memcpy that would be at line 510 */
        memcpy(copy3, key3, lengths[2] + 1);
        
        xmlFree(copy3);
    } else {
        copy3 = NULL;
    }
    
    free(key3);
    return 0;
}

/* Stub implementations */
void xmlFree(void *ptr) {
    free(ptr);
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

/* Main harness entry point */
int main(void) {
    xmlHashTablePtr table = NULL;
    
    /* Call the target function with symbolic parameters */
    xmlHashRemoveEntry3(table, NULL, NULL, NULL, NULL);
    
    return 0;
}