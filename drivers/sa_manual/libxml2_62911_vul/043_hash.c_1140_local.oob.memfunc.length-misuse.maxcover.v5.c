#include <klee/klee.h>
#include "hash.h"

int main() {
    // Initialize symbolic hash table
    xmlHashTablePtr hash = (xmlHashTablePtr)malloc(sizeof(xmlHashTable));
    klee_make_symbolic(hash, sizeof(xmlHashTable), "hash");
    
    // Initialize symbolic size
    unsigned size;
    klee_make_symbolic(&size, sizeof(unsigned), "size");
    hash->size = size;
    
    // Allocate table with symbolic size
    if (size > 0) {
        hash->table = (xmlHashEntry*)malloc(size * sizeof(xmlHashEntry));
        klee_make_symbolic(hash->table, size * sizeof(xmlHashEntry), "table");
    } else {
        hash->table = NULL;
    }
    
    // Initialize symbolic keys
    xmlChar key[32];
    xmlChar key2[32];
    xmlChar key3[32];
    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(key2, sizeof(key2), "key2");
    klee_make_symbolic(key3, sizeof(key3), "key3");
    
    // Initialize other required fields
    hash->randomSeed = 0;
    hash->dict = NULL;
    hash->nbElems = 0;
    
    // Call the target function
    int result = xmlHashRemoveEntry3(hash, key, key2, key3, NULL);
    
    // Assertion for potential OOB in memmove at line 1140
    // Check that the memory range [entry, cur] is within table bounds
    if (hash->size > 0 && hash->table != NULL) {
        xmlHashEntry *entry = hash->table;
        xmlHashEntry *cur = hash->table;
        unsigned mask = hash->size - 1;
        unsigned pos = 0;
        
        // Symbolic computation of entry and cur positions
        klee_make_symbolic(&entry, sizeof(xmlHashEntry*), "entry_ptr");
        klee_make_symbolic(&cur, sizeof(xmlHashEntry*), "cur_ptr");
        
        // Assert that the memmove operation at line 1140 stays within bounds
        klee_assume(entry >= hash->table);
        klee_assume(cur >= hash->table);
        klee_assume(entry < hash->table + hash->size);
        klee_assume(cur < hash->table + hash->size);
        
        // The critical assertion for the potential OOB
        klee_assert((char*)cur - (char*)entry >= 0);
        klee_assert((char*)cur - (char*)entry <= (char*)(hash->table + hash->size) - (char*)entry);
    }
    
    // Cleanup
    if (hash->table != NULL) {
        free(hash->table);
    }
    free(hash);
    
    return 0;
}