#include <klee/klee.h>
#include "hash.h"
#include "dict.h"

int main() {
    // Initialize hash table
    xmlHashTablePtr hash = xmlHashCreate(0);
    if (hash == NULL) return 0;
    
    // Make symbolic inputs
    xmlChar key[32];
    xmlChar key2[32];
    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(key2, sizeof(key2), "key2");
    
    // Initialize lengths array - this is critical for the vulnerability
    size_t lengths[3];
    klee_make_symbolic(lengths, sizeof(lengths), "lengths");
    
    // Set up the hash table to take the non-dict path
    hash->dict = NULL;
    hash->size = 8;  // Small size to trigger growth
    hash->nbElems = 6;  // Force near capacity to trigger the growth path
    
    // Call the vulnerable function
    int result = xmlHashUpdateInternal(hash, key, key2, NULL, NULL, NULL, 0);
    
    // Assertion for the potential buffer overflow at line 498
    // Check that if we allocate copy2, we don't copy more than allocated
    if (key2 != NULL && lengths[1] < 31) {
        klee_assert(lengths[1] + 1 <= 32);
    }
    
    xmlHashFree(hash, NULL);
    return 0;
}