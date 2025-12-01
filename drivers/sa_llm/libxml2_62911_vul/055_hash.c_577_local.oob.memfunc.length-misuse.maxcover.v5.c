#include <klee/klee.h>
#include "hash.h"

int main() {
    // Initialize hash table
    xmlHashTablePtr hash = xmlHashCreate();
    if (hash == NULL) return -1;

    // Create symbolic inputs
    xmlChar key[100];
    void* payload = NULL;
    
    klee_make_symbolic(key, sizeof(key), "key");
    
    // Initialize hash table to trigger growth condition
    hash->size = 0;
    hash->nbElems = 0;
    
    // Call entry function that leads to the suspicious line
    int result = xmlHashAddEntry(hash, key, payload);
    
    // Assertion for bounds check near line 577
    // Check that the memmove operation doesn't go out of bounds
    if (hash->table != NULL && hash->size > 0) {
        xmlHashEntry* entry = &hash->table[0];
        xmlHashEntry* cur = &hash->table[hash->size - 1];
        klee_assert((char*)cur >= (char*)entry);
    }
    
    xmlHashFree(hash, NULL);
    return 0;
}