#include <klee/klee.h>
#include "hash.c"

int main() {
    // Initialize hash table structure
    xmlHashTablePtr hash = (xmlHashTablePtr)malloc(sizeof(xmlHashTable));
    klee_make_symbolic(hash, sizeof(xmlHashTable), "hash");
    
    // Symbolic size field - ensure it's a power of 2 for the mask operation
    unsigned size;
    klee_make_symbolic(&size, sizeof(unsigned), "size");
    klee_assume(size > 0 && (size & (size - 1)) == 0); // power of 2
    hash->size = size;
    
    // Allocate table with symbolic size
    hash->table = (xmlHashEntry*)malloc(size * sizeof(xmlHashEntry));
    klee_make_symbolic(hash->table, size * sizeof(xmlHashEntry), "table");
    
    // Initialize random seed
    klee_make_symbolic(&hash->randomSeed, sizeof(unsigned), "randomSeed");
    
    // Set dict to NULL to exercise the free path
    hash->dict = NULL;
    
    // Initialize nbElems
    klee_make_symbolic(&hash->nbElems, sizeof(int), "nbElems");
    
    // Create symbolic keys
    xmlChar key[32];
    xmlChar key2[32]; 
    xmlChar key3[32];
    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(key2, sizeof(key2), "key2");
    klee_make_symbolic(key3, sizeof(key3), "key3");
    
    // Call the target function
    xmlHashRemoveEntry3(hash, key, key2, key3, NULL);
    
    // Cleanup
    free(hash->table);
    free(hash);
    
    return 0;
}