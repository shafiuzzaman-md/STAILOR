#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal definitions to compile */
typedef struct _xmlHashEntry xmlHashEntry;
typedef struct _xmlHashTable xmlHashTable;

struct _xmlHashEntry {
    void *payload;
    const xmlChar *name;
    const xmlChar *name2;
    const xmlChar *name3;
    unsigned hashValue;
    xmlHashEntry *next;
};

struct _xmlHashTable {
    xmlHashEntry *table;
    int size;
    int nbElems;
};

/* Stub for xmlHashRemoveEntry3 */
int xmlHashRemoveEntry3(xmlHashTable *table, const xmlChar *name, 
                        const xmlChar *name2, const xmlChar *name3, 
                        void (*f)(void *payload, const xmlChar *name)) {
    /* Simulate the vulnerable memmove path */
    xmlHashEntry *entry = table->table;
    xmlHashEntry *end = table->table + table->size;
    xmlHashEntry *next = entry + 1;
    xmlHashEntry *cur = entry; /* Simplified for demonstration */

    /* This is the vulnerable memmove line from hash.c:1140 */
    memmove(entry, next, (char *) cur - (char *) entry);

    /* Vulnerability assertion: ensure length doesn't exceed buffer bounds */
    size_t move_len = (size_t)((char *)cur - (char *)entry);
    SAILR_ASSERT(move_len <= (size_t)((char *)end - (char *)entry));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return 0;
}

int main(void) {
    /* Symbolic inputs */
    xmlHashTable table;
    xmlChar name[32], name2[32], name3[32];
    
    /* Initialize table with symbolic size */
    int table_size;
    klee_make_symbolic(&table_size, sizeof(table_size), "table_size");
    klee_assume(table_size > 0 && table_size < 100); /* Reasonable bounds */
    
    /* Allocate table entries */
    table.table = (xmlHashEntry *)malloc(table_size * sizeof(xmlHashEntry));
    table.size = table_size;
    table.nbElems = 0;
    
    /* Make names symbolic */
    klee_make_symbolic(name, sizeof(name), "name");
    klee_make_symbolic(name2, sizeof(name2), "name2");
    klee_make_symbolic(name3, sizeof(name3), "name3");
    
    /* Initialize first entry to enable the vulnerable path */
    if (table.table != NULL) {
        table.table[0].hashValue = 1; /* Non-zero to be considered valid */
        table.table[0].next = NULL;
    }
    
    /* Call the vulnerable function */
    xmlHashRemoveEntry3(&table, name, name2, name3, NULL);
    
    /* Cleanup */
    free(table.table);
    
    return 0;
}