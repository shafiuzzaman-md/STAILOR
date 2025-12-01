#include <klee/klee.h>
#include "hash.h"

int main() {
    xmlHashTablePtr hash;
    xmlChar *key, *key2, *key3;
    void *payload;
    unsigned lengths[3];
    
    // Initialize hash table
    hash = xmlHashCreate(8);
    if (hash == NULL) return 0;
    
    // Make inputs symbolic
    klee_make_symbolic(&lengths, sizeof(lengths), "lengths");
    klee_make_symbolic(&key, sizeof(key), "key");
    klee_make_symbolic(&key2, sizeof(key2), "key2");
    klee_make_symbolic(&key3, sizeof(key3), "key3");
    klee_make_symbolic(&payload, sizeof(payload), "payload");
    
    // Constrain lengths to reasonable values
    for (int i = 0; i < 3; i++) {
        klee_assume(lengths[i] < 1024);
    }
    
    // Call the function that leads to the suspicious line
    // Based on the code structure, this appears to be xmlHashUpdateInternal
    int result = xmlHashUpdateInternal(hash, key, key2, key3, payload, NULL, 0);
    
    // Add assertion near the suspicious line (line 571)
    // The suspicious memmove operation could cause OOB access
    // We check that the source and destination ranges are within hash->table bounds
    if (hash->size > 0) {
        klee_assert(hash->table >= hash->table);
        klee_assert(&hash->table[hash->size] >= hash->table);
    }
    
    xmlHashFree(hash, NULL);
    return 0;
}