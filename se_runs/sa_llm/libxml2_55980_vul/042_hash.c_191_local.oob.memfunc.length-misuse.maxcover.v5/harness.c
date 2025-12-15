#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the target code */
typedef struct _xmlDict xmlDict;
typedef struct _xmlHashEntry xmlHashEntry;

typedef struct _xmlHashTable {
    xmlDict *dict;
    int size;
    int nbElems;
    xmlHashEntry *table;
    int random_seed;
} xmlHashTable;

/* Stub functions needed to reach the target line */
void* xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "xmlMalloc_memory");
    }
    return ptr;
}

void xmlFree(void *ptr) {
    if (ptr) free(ptr);
}

#ifdef HASH_RANDOMIZATION
int __xmlRandom(void) {
    int seed;
    klee_make_symbolic(&seed, sizeof(seed), "random_seed");
    return seed;
}
#endif

/* The actual function from hash.c that we need to call */
xmlHashTable* xmlHashCreate(int size) {
    xmlHashTable *table;

    table = xmlMalloc(sizeof(xmlHashTable));
    if (table) {
        table->dict = NULL;
        table->size = size;
        table->nbElems = 0;
        table->table = xmlMalloc(size * sizeof(xmlHashEntry));
        if (table->table) {
            /* TARGET LINE 191 - vulnerable memset call */
            memset(table->table, 0, size * sizeof(xmlHashEntry));
#ifdef HASH_RANDOMIZATION
            table->random_seed = __xmlRandom();
#endif
            return(table);
        }
        xmlFree(table);
    }
    return(NULL);
}

int main(void) {
    int size;
    
    /* Make the size parameter symbolic */
    klee_make_symbolic(&size, sizeof(size), "size");
    
    /* Assume size is positive to reach the allocation */
    klee_assume(size > 0);
    
    /* Call the vulnerable function */
    xmlHashTable *table = xmlHashCreate(size);
    
    /* If we reach here with a non-NULL table, we've executed the memset */
    if (table != NULL) {
        /* Vulnerability assertion: check that size * sizeof(xmlHashEntry) 
           doesn't overflow or exceed reasonable bounds */
        SAILR_ASSERT(size > 0 && size <= 1024);  /* Reasonable bound for hash table size */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        if (table->table) xmlFree(table->table);
        xmlFree(table);
    }
    
    return 0;
}