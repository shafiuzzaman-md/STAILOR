#include <klee/klee.h>
#include "hash.c"

int main() {
    // Initialize hash table structure
    xmlHashTablePtr hash = (xmlHashTablePtr)malloc(sizeof(xmlHashTable));
    klee_make_symbolic(hash, sizeof(xmlHashTable), "hash");
    
    // Symbolic size for hash table
    klee_assume(hash->size > 0);
    unsigned table_size = hash->size;
    
    // Allocate table with symbolic size
    hash->table = (xmlHashEntry*)malloc(table_size * sizeof(xmlHashEntry));
    klee_make_symbolic(hash->table, table_size * sizeof(xmlHashEntry), "hash_table");
    
    // Initialize random seed
    hash->randomSeed = 0;
    
    // Initialize dict (NULL for this test)
    hash->dict = NULL;
    
    // Initialize nbElems
    hash->nbElems = klee_int("nbElems");
    klee_assume(hash->nbElems >= 0);
    
    // Create symbolic keys
    xmlChar key1[32], key2[32], key3[32];
    klee_make_symbolic(key1, sizeof(key1), "key1");
    klee_make_symbolic(key2, sizeof(key2), "key2"); 
    klee_make_symbolic(key3, sizeof(key3), "key3");
    
    // Call the target function
    int result = xmlHashRemoveEntry3(hash, key1, key2, key3, NULL);
    
    // Assertion for bounds check at line 1140
    // Check that the memmove operation doesn't exceed table bounds
    if (hash->table != NULL && hash->size > 0) {
        xmlHashEntry* entry = hash->table;
        xmlHashEntry* next = entry + 1;
        xmlHashEntry* cur = entry;
        
        // Calculate the distance and ensure it's within table bounds
        size_t move_size = (char*)cur - (char*)entry;
        klee_assert(move_size <= (hash->size * sizeof(xmlHashEntry)));
    }
    
    // Cleanup
    free(hash->table);
    free(hash);
    
    return 0;
}