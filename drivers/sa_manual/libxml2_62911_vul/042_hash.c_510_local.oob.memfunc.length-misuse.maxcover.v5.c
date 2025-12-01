#include <klee/klee.h>
#include "hash.c"

int main() {
    // Initialize hash table structure
    xmlHashTablePtr hash = xmlHashCreate(0);
    if (hash == NULL) return 0;
    
    // Initialize lengths array
    size_t lengths[3];
    klee_make_symbolic(lengths, sizeof(lengths), "lengths");
    
    // Ensure lengths are reasonable for symbolic execution
    for (int i = 0; i < 3; i++) {
        klee_assume(lengths[i] < 1000);
    }
    
    // Create symbolic keys
    xmlChar key1[1000], key2[1000], key3[1000];
    klee_make_symbolic(key1, sizeof(key1), "key1");
    klee_make_symbolic(key2, sizeof(key2), "key2"); 
    klee_make_symbolic(key3, sizeof(key3), "key3");
    
    // Create symbolic payload
    void* payload;
    klee_make_symbolic(&payload, sizeof(payload), "payload");
    
    // Call xmlHashAddEntry3 which contains the suspicious line
    int result = xmlHashAddEntry3(hash, key1, key2, key3, payload);
    
    // Assertion for potential out-of-bounds access at line 510
    // Check that if key3 is non-NULL and copy3 is allocated, the memcpy doesn't overflow
    if (key3 != NULL && lengths[2] > 0) {
        klee_assert(lengths[2] < 1000);
    }
    
    xmlHashFree(hash, NULL);
    return 0;
}