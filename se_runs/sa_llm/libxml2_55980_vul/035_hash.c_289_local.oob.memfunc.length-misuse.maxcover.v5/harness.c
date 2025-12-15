#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions from libxml2 needed for the harness */
typedef struct _xmlHashEntry xmlHashEntry;
struct _xmlHashEntry {
    void *name;
    void *name2;
    void *name3;
    void *payload;
    int valid;
    xmlHashEntry *next;
};

typedef struct _xmlHashTable xmlHashTable;
struct _xmlHashTable {
    xmlHashEntry *table;
    int size;
    int nbElems;
};

/* Stub for xmlHashComputeKey - returns a value within table bounds */
static int xmlHashComputeKey(xmlHashTable *table, void *name, void *name2, void *name3) {
    int key;
    klee_make_symbolic(&key, sizeof(key), "key");
    klee_assume(key >= 0);
    klee_assume(key < table->size);
    return key;
}

/* Stub for xmlFree */
void xmlFree(void *mem) {
    free(mem);
}

/* Minimal implementation of the vulnerable code path */
static void vulnerable_path(xmlHashTable *table, xmlHashEntry *iter) {
    int key = xmlHashComputeKey(table, iter->name, iter->name2, iter->name3);
    
    if (table->table[key].valid == 0) {
        /* VULNERABILITY ASSERTION: Ensure key is within table bounds */
        SAILR_ASSERT(key >= 0 && key < table->size);
        
        /* REACHABILITY ASSERTION */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* This memcpy is the target line 289 */
        memcpy(&(table->table[key]), iter, sizeof(xmlHashEntry));
        table->table[key].next = NULL;
        xmlFree(iter);
    } else {
        iter->next = table->table[key].next;
        table->table[key].next = iter;
    }
}

int main(void) {
    /* Symbolic table size */
    int table_size;
    klee_make_symbolic(&table_size, sizeof(table_size), "table_size");
    klee_assume(table_size > 0);
    klee_assume(table_size < 1000); /* Reasonable bound */
    
    /* Allocate and initialize hash table */
    xmlHashTable *table = malloc(sizeof(xmlHashTable));
    table->size = table_size;
    table->nbElems = 0;
    table->table = calloc(table_size, sizeof(xmlHashEntry));
    
    /* Symbolic hash entry */
    xmlHashEntry *iter = malloc(sizeof(xmlHashEntry));
    klee_make_symbolic(iter, sizeof(xmlHashEntry), "iter");
    
    /* Ensure iter has valid pointers (avoid null derefs in xmlHashComputeKey) */
    if (iter->name == NULL) iter->name = malloc(1);
    if (iter->name2 == NULL) iter->name2 = malloc(1);
    if (iter->name3 == NULL) iter->name3 = malloc(1);
    
    /* Initialize some table entries to control path */
    for (int i = 0; i < table_size; i++) {
        table->table[i].valid = 0;
        table->table[i].next = NULL;
    }
    
    /* Trigger the vulnerable path */
    vulnerable_path(table, iter);
    
    /* Cleanup */
    free(iter->name);
    free(iter->name2);
    free(iter->name3);
    free(iter);
    free(table->table);
    free(table);
    
    return 0;
}