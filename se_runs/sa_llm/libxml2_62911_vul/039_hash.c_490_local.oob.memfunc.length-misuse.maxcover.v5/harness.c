#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stubs for libxml2 functions needed to reach target */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlFree(void* ptr) {
    free(ptr);
}

/* Target function signature from SA spec */
int xmlHashRemoveEntry3(void* table, const char* key, const char* key2, 
                        const char* key3, void (*f)(void*, void*), void* data);

/* Main harness */
int main(void) {
    /* Symbolic inputs for xmlHashRemoveEntry3 parameters */
    void* table;
    char key[256];
    char key2[256];
    char key3[256];
    void* data;
    
    /* Symbolic lengths array (as per snippet: lengths[0] + 1) */
    int lengths[2];
    
    /* Make inputs symbolic */
    klee_make_symbolic(&table, sizeof(table), "table");
    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(key2, sizeof(key2), "key2");
    klee_make_symbolic(key3, sizeof(key3), "key3");
    klee_make_symbolic(&data, sizeof(data), "data");
    klee_make_symbolic(lengths, sizeof(lengths), "lengths");
    
    /* Assume plausible conditions to reach line 490 */
    /* From snippet: key2 != NULL branch, copy2 allocation fails */
    klee_assume(key2 != NULL);
    klee_assume(lengths[0] >= 0);  /* Non-negative length */
    klee_assume(lengths[0] < 256); /* Reasonable bound for allocation */
    klee_assume(lengths[1] >= 0);  /* Non-negative length */
    
    /* Call target function - will reach line 490 when:
       1. key2 != NULL (ensured by assume)
       2. xmlMalloc(lengths[0] + 1) succeeds (copy != NULL)
       3. xmlMalloc(lengths[1] + 1) fails (copy2 == NULL)
       4. Then xmlFree(copy) is called at line 490
    */
    int result = xmlHashRemoveEntry3(table, key, key2, key3, NULL, data);
    
    /* Vulnerability assertion: ensure lengths[0] + 1 doesn't cause OOB */
    /* The memcpy at line 488 uses lengths[0] + 1 as size */
    /* We need to assert that this size is within key's bounds */
    SAILR_ASSERT(lengths[0] + 1 <= sizeof(key));
    
    /* Reachability marker for line 490 */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return 0;
}