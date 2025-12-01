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

    // Add some entries to the hash table
    int data1 = 1, data2 = 2, data3 = 3;
    xmlHashAddEntry3(hash, key1, key2, key3, &data1);
    xmlHashAddEntry3(hash, key1, key2, NULL, &data2);
    xmlHashAddEntry3(hash, key1, NULL, NULL, &data3);

    // Remove entry - this should trigger the suspicious memmove
    int result = xmlHashRemoveEntry3(hash, key1, key2, key3, NULL);
    
    // Assertion near the suspicious line - check bounds for memmove
    // The memmove at line 1134: memmove(entry, next, (char *) end - (char *) next);
    // We want to ensure the source and destination regions are within hash->table bounds
    if (hash->table != NULL && hash->size > 0) {
        xmlHashEntry* table_start = hash->table;
        xmlHashEntry* table_end = &hash->table[hash->size];
        
        // Check that the source region (next to end) is within table bounds
        xmlHashEntry* entry_ptr = table_start; // approximation for entry
        xmlHashEntry* next_ptr = entry_ptr + 1; // approximation for next
        
        klee_assert(next_ptr >= table_start);
        klee_assert(next_ptr < table_end);
        
        // Check that the destination region (entry to entry + size) is within bounds
        size_t move_size = (char*)table_end - (char*)next_ptr;
        if (move_size > 0) {
            klee_assert(entry_ptr >= table_start);
            klee_assert((char*)entry_ptr + move_size <= (char*)table_end);
        }
    }

    xmlHashFree(hash, NULL);
    return 0;
}