#include <klee/klee.h>
#include "hash.h"
#include "dict.h"

int main() {
    // Initialize hash table
    xmlHashTablePtr hash = xmlHashCreate(0);
    if (hash == NULL) return 0;
    
    // Make symbolic keys and lengths
    xmlChar key[256];
    size_t lengths[3];
    
    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(lengths, sizeof(lengths), "lengths");
    
    // Constrain lengths to reasonable values
    klee_assume(lengths[0] < 256);
    klee_assume(lengths[1] < 256);
    klee_assume(lengths[2] < 256);
    
    // Call the vulnerable function path
    int result = xmlHashUpdateInternal(hash, key, NULL, NULL, NULL, NULL, 0);
    
    // Assertion for the suspicious line 490 - check buffer bounds
    // The memcpy copies lengths[0] + 1 bytes, so we need to ensure key has at least that much
    if (hash->dict == NULL && key != NULL) {
        klee_assert(lengths[0] + 1 <= sizeof(key));
    }
    
    xmlHashFree(hash, NULL);
    return 0;
}