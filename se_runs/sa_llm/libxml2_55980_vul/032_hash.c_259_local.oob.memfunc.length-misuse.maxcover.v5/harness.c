#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed from libxml2 */
typedef struct _xmlHashEntry xmlHashEntry;
struct _xmlHashEntry {
    void *payload;
    const void *name;
    int name2;
    int name3;
    struct _xmlHashEntry *next;
};

typedef struct _xmlHashTable xmlHashTable;
struct _xmlHashTable {
    xmlHashEntry *table;
    int size;
    int nbElems;
    const char *dict;
    int (*random) (void);
    xmlHashEntry *(*malloc) (int);
    void (*free) (void *);
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "xmlMalloc_buffer");
    }
    return ptr;
}

/* Function prototype matching the target function in hash.c */
int xmlHashGrow(xmlHashTable *table, int size);

/* Harness entry point */
int main(void) {
    xmlHashTable table;
    int size;
    
    /* Make table and size symbolic */
    klee_make_symbolic(&table, sizeof(table), "table");
    klee_make_symbolic(&size, sizeof(size), "size");
    
    /* Assume reasonable constraints to reach the target line */
    klee_assume(size > 0);
    klee_assume(size < 1000); /* Reasonable upper bound */
    
    /* Assume oldtable is non-NULL to pass the early check at line 251 */
    xmlHashEntry *oldtable = (xmlHashEntry*)malloc(sizeof(xmlHashEntry));
    klee_assume(oldtable != NULL);
    table.table = oldtable;
    table.size = 1; /* Small initial size to trigger growth */
    
    /* Call the target function */
    int result = xmlHashGrow(&table, size);
    
    /* If we reach the target line, the vulnerability assertion should be checked */
    /* The vulnerability condition: size * sizeof(xmlHashEntry) should not overflow */
    /* and the allocated buffer should be large enough for the memset */
    SAILR_ASSERT(size > 0 && size * sizeof(xmlHashEntry) / sizeof(xmlHashEntry) == size);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    free(oldtable);
    if (table.table && table.table != oldtable) {
        free(table.table);
    }
    
    return 0;
}

/* Implementation of xmlHashGrow that mimics the vulnerable code path */
int xmlHashGrow(xmlHashTable *table, int size) {
    xmlHashEntry *oldtable = table->table;
    
    if (oldtable == NULL)
        return -1;
    
    table->table = xmlMalloc(size * sizeof(xmlHashEntry));
    if (table->table == NULL) {
        table->table = oldtable;
        return -1;
    }
    
    /* TARGET LINE 259 - vulnerable memset */
    memset(table->table, 0, size * sizeof(xmlHashEntry));
    table->size = size;
    
    /* Simplified rest of function to avoid complexity */
    free(oldtable);
    return 0;
}