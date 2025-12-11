#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "klee/klee.h"

/* Stub for xmlDictCreate */
void* xmlDictCreate(void) {
    void* dict = malloc(1024);
    if (dict == NULL) {
        return NULL;
    }
    return dict;
}

/* Stub for xmlDictFree */
void xmlDictFree(void* dict) {
    free(dict);
}

/* Stub for xmlDictLookup */
const char* xmlDictLookup(void* dict, const char* name, int len) {
    static char buffer[256];
    if (len < 256) {
        memcpy(buffer, name, len);
        buffer[len] = '\0';
        return buffer;
    }
    return NULL;
}

int main(void) {
    void* dict;
    int NB_STRINGS_MIN;
    int i;
    char test2[100];
    const char* strings[100];
    
    /* Make NB_STRINGS_MIN symbolic */
    klee_make_symbolic(&NB_STRINGS_MIN, sizeof(NB_STRINGS_MIN), "NB_STRINGS_MIN");
    
    /* Assume NB_STRINGS_MIN is within reasonable bounds for the test */
    klee_assume(NB_STRINGS_MIN >= 0);
    klee_assume(NB_STRINGS_MIN < 100);
    
    dict = xmlDictCreate();
    if (dict == NULL) {
        fprintf(stderr, "Out of memory while creating sub-dictionary\n");
        exit(1);
    }
    
    /* Vulnerability assertion: check that memset size doesn't exceed buffer bounds */
    SAILR_ASSERT(sizeof(test2) >= NB_STRINGS_MIN * sizeof(char*));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cast to avoid buggy warning on MSVC. */
    memset((void *) test2, 0, sizeof(test2));
    
    /*
     * Fill in NB_STRINGS_MIN, at this point the dictionary should not grow
     * and we allocate all those doing the fast key computations
     * All the strings are based on a different seeds subset so we know
     */
    
    /* Clean up */
    xmlDictFree(dict);
    
    return 0;
}