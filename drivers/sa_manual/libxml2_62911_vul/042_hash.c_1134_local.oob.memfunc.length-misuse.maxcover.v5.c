#include <klee/klee.h>
#include "hash.h"

int main() {
    // Initialize hash table
    xmlHashTablePtr hash = xmlHashCreate(8);
    if (hash == NULL) return -1;

    // Create symbolic keys
    xmlChar key1[10], key2[10], key3[10];
    klee_make_symbolic(key1, sizeof(key1), "key1");
    klee_make_symbolic(key2, sizeof(key2), "key2"); 
    klee_make_symbolic(key3, sizeof(key3), "key3");
    
    // Ensure keys are null-terminated
    key1[9] = 0;
    key2[9] = 0;
    key3[9] = 0;

    // Add some entries to populate the hash table
    int data1 = 1, data2 = 2, data3 = 3;
    xmlHashAddEntry3(hash, key1, key2, key3, &data1);
    xmlHashAddEntry3(hash, key1, key2, NULL, &data2);
    xmlHashAddEntry3(hash, key1, NULL, NULL, &data3);

    // Call the target function
    int result = xmlHashRemoveEntry3(hash, key1, key2, key3, NULL);

    // Assertion for potential OOB in memmove at line 1134
    // Check that the memmove operation doesn't exceed table bounds
    if (hash->table != NULL && hash->size > 0) {
        xmlHashEntry *table_end = &hash->table[hash->size];
        klee_assert((char*)table_end >= (char*)hash->table);
    }

    xmlHashFree(hash, NULL);
    return 0;
}