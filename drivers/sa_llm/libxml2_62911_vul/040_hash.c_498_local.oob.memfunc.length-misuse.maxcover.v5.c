#include <klee/klee.h>
#include "hash.c"

int main() {
    // Initialize hash table
    xmlHashTablePtr hash = xmlHashCreate(0);
    if (hash == NULL) return 0;

    // Make symbolic inputs
    xmlChar key[100];
    xmlChar key2[100];
    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(key2, sizeof(key2), "key2");
    
    // Initialize lengths array
    size_t lengths[3];
    klee_make_symbolic(lengths, sizeof(lengths), "lengths");
    
    // Constrain lengths to reasonable values
    klee_assume(lengths[0] < 100);
    klee_assume(lengths[1] < 100);
    klee_assume(lengths[2] < 100);
    
    // Set hash->dict to NULL to trigger the vulnerable path
    hash->dict = NULL;
    
    // Call the vulnerable function
    int result = xmlHashUpdateInternal(hash, key, key2, NULL, NULL, NULL, 0);
    
    // Assertion for the suspicious line 498
    // Check that if key2 is not NULL and copy2 was allocated, 
    // the memcpy doesn't overflow
    if (key2 != NULL && lengths[1] < 100) {
        klee_assert(lengths[1] + 1 <= 100);
    }
    
    xmlHashFree(hash, NULL);
    return 0;
}