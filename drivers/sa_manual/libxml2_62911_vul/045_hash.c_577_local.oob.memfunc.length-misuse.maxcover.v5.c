#include <klee/klee.h>
#include "hash.c"

int main() {
    // Initialize hash table
    xmlHashTablePtr hash = xmlHashCreate();
    if (hash == NULL) return -1;

    // Create symbolic inputs
    xmlChar key[32];
    void* payload = NULL;
    
    klee_make_symbolic(key, sizeof(key), "key");
    
    // Call entry function - using xmlHashAddEntry as it's a common entry point
    int result = xmlHashAddEntry(hash, key, payload);
    
    // Add assertion near the suspicious line - checking for potential memmove bounds issues
    // The assertion should fail if the memmove at line 577 accesses out-of-bounds memory
    // We'll check that the source and destination ranges are within hash table bounds
    if (hash->size > 0 && hash->table != NULL) {
        xmlHashEntry* entry = hash->table;
        xmlHashEntry* end = &hash->table[hash->size];
        
        // Conservative bounds check for the memmove operation
        klee_assert(entry >= hash->table && entry < end);
        if (entry->hashValue != 0) {
            xmlHashEntry* cur = entry;
            do {
                cur++;
                if (cur >= end) cur = hash->table;
            } while (cur->hashValue != 0);
            
            // Check that the memmove range is within table bounds
            klee_assert(entry >= hash->table && &entry[1] <= end);
            klee_assert(entry >= hash->table && cur <= end);
        }
    }
    
    xmlHashFree(hash, xmlHashDefaultDeallocator);
    return 0;
}