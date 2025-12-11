#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stubs for libxml2 types and functions needed to reach target */
typedef struct _xmlDict xmlDict;
struct _xmlDict {
    int size;
    void *table;
};

void* xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlFree(void *ptr) {
    free(ptr);
}

/* Target function from dict.c - simplified to reach line 588 */
int xmlDictGrow(xmlDict *dict, int size) {
    void **table;
    int oldsize;
    
    /* Lines before target */
    if ((size_t) size + 0 > SIZE_MAX / sizeof(table[0]))
        return(-1);
    table = xmlMalloc(size * sizeof(table[0]));
    if (table == NULL)
        return(-1);
    
    /* TARGET LINE 588: memset(table, 0, size * sizeof(table[0])); */
    memset(table, 0, size * sizeof(table[0]));
    
    oldsize = dict->size;
    if (oldsize == 0)
        goto done;
    
    /* Rest omitted for brevity */
done:
    return 0;
}

/* Entrypoint needed to reach xmlDictLookup (from SA spec) */
const xmlChar* xmlDictLookup(xmlDict *dict, const xmlChar *name, int len) {
    /* Simplified: just trigger growth */
    if (dict->size == 0) {
        xmlDictGrow(dict, 8); /* arbitrary size */
    }
    return name;
}

int main(void) {
    xmlDict dict;
    xmlChar name[100];
    int len;
    
    /* Initialize dict */
    dict.size = 0;
    dict.table = NULL;
    
    /* Make inputs symbolic */
    klee_make_symbolic(name, sizeof(name), "name");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Assume reasonable bounds for symbolic inputs */
    klee_assume(len >= 0);
    klee_assume(len < 100);
    
    /* Call entrypoint that leads to target */
    xmlDictLookup(&dict, name, len);
    
    /* Vulnerability assertion: size must be non-negative for safe memset */
    /* The vulnerability is that size could be negative or too large */
    SAILR_ASSERT(size >= 0 && (size_t)size <= SIZE_MAX / sizeof(void*));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    if (dict.table) {
        xmlFree(dict.table);
    }
    
    return 0;
}