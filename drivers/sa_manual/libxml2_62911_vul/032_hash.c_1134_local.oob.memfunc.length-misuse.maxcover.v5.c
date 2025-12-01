#include <klee/klee.h>
#include "hash.h"

int main() {
    // Initialize symbolic hash table
    xmlHashTablePtr hash = xmlHashCreate(8);
    if (hash == NULL) return -1;

    // Create symbolic keys
    xmlChar key1[10], key2[10], key3[10];
    klee_make_symbolic(key1, sizeof(key1), "key1");
    klee_make_symbolic(key2, sizeof(key2), "key2"); 
    klee_make_symbolic(key3, sizeof(key3), "key3");
    
    // Add some entries to populate the hash table
    int payload1 = 1, payload2 = 2, payload3 = 3;
    xmlHashAddEntry3(hash, key1, key2, key3, &payload1);
    xmlHashAddEntry3(hash, key1, key2, NULL, &payload2);
    xmlHashAddEntry3(hash, key1, NULL, NULL, &payload3);

    // Call the target function
    int result = xmlHashRemoveEntry3(hash, key1, key2, key3, NULL);

    // Assertion for potential memmove OOB
    // Check that the memmove at line 1134 doesn't exceed table bounds
    if (hash->table != NULL && hash->size > 0) {
        xmlHashEntry *entry = hash->table;
        xmlHashEntry *next = entry + 1;
        xmlHashEntry *end = &hash->table[hash->size];
        
        // Assert that the memmove source and destination are within table bounds
        klee_assert(entry >= hash->table && entry < end);
        klee_assert(next >= hash->table && next < end);
        klee_assert((char*)end - (char*)next >= 0);
        klee_assert((char*)end - (char*)next <= (char*)end - (char*)hash->table);
    }

    xmlHashFree(hash, NULL);
    return 0;
}