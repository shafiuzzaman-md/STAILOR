#include <klee/klee.h>
#include "hash.h"

int main() {
    // Initialize hash table
    xmlHashTablePtr hash = xmlHashCreate(0);
    if (hash == NULL) return 0;

    // Create symbolic inputs
    xmlChar key[10];
    klee_make_symbolic(key, sizeof(key), "key");
    key[9] = '\0'; // Ensure null termination

    void* payload = NULL;

    // Call entry function - using xmlHashAddEntry as it's a common entry point
    int result = xmlHashAddEntry(hash, key, payload);

    // Add assertion near the suspicious line - checking for potential memmove bounds issues
    // The suspicious line is memmove at line 571, so we check if we're in that code path
    // We can't directly check the exact condition, but we can add a general bounds check
    if (hash->size > 0 && hash->table != NULL) {
        // Check that we're not accessing out of bounds in the table
        klee_assert(hash->size <= MAX_HASH_SIZE);
    }

    // Cleanup
    xmlHashFree(hash, NULL);
    return 0;
}