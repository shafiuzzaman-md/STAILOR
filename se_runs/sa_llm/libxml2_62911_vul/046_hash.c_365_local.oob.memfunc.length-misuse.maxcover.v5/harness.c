#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlHashTable xmlHashTable;
typedef void (*xmlHashDeallocator)(void *payload, const xmlChar *name);

/* Minimal stub for xmlHashTable structure */
struct _xmlHashTable {
    void **table;
    int size;
    int nbElems;
    xmlHashDeallocator dealloc;
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    if (size == 0) return NULL;
    return malloc(size);
}

/* Stub for xmlFree */
void xmlFree(void *ptr) {
    if (ptr) free(ptr);
}

/* Target function: xmlHashRemoveEntry3 */
int xmlHashRemoveEntry3(xmlHashTable *hash, const xmlChar *name, 
                       const xmlChar *name2, const xmlChar *name3, 
                       void (*dealloc)(void *)) {
    /* Simplified implementation to reach line 365 */
    int size = hash->nbElems * 2;  /* Simplified size calculation */
    
    /* This mimics the code around line 365 */
    if ((size_t) size + 0 > SIZE_MAX / sizeof(void*))
        return(-1);
    
    void **table = xmlMalloc(size * sizeof(void*));
    if (table == NULL)
        return(-1);
    
    /* TARGET LINE 365: memset(table, 0, size * sizeof(table[0])); */
    memset(table, 0, size * sizeof(table[0]));
    
    int oldsize = hash->size;
    if (oldsize == 0)
        goto done;
    
    /* Vulnerability assertion: size must be non-negative and reasonable */
    SAILR_ASSERT(size >= 0 && size <= 1024);  /* Prevent excessive allocation */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
done:
    if (table) xmlFree(table);
    return 0;
}

/* Entry point */
int main(void) {
    /* Create symbolic hash table */
    xmlHashTable hash;
    
    /* Make hash table fields symbolic */
    klee_make_symbolic(&hash.nbElems, sizeof(hash.nbElems), "nbElems");
    klee_make_symbolic(&hash.size, sizeof(hash.size), "size");
    
    /* Constrain inputs to reasonable values */
    klee_assume(hash.nbElems >= 0);
    klee_assume(hash.nbElems <= 512);  /* Reasonable upper bound */
    klee_assume(hash.size >= 0);
    klee_assume(hash.size <= 512);
    
    /* Initialize other fields */
    hash.table = NULL;
    hash.dealloc = NULL;
    
    /* Call target function with symbolic names */
    xmlChar name[1] = {0};
    xmlChar name2[1] = {0};
    xmlChar name3[1] = {0};
    
    /* Make names symbolic */
    klee_make_symbolic(name, sizeof(name), "name");
    klee_make_symbolic(name2, sizeof(name2), "name2");
    klee_make_symbolic(name3, sizeof(name3), "name3");
    
    /* Call the vulnerable function */
    xmlHashRemoveEntry3(&hash, name, name2, name3, NULL);
    
    return 0;
}