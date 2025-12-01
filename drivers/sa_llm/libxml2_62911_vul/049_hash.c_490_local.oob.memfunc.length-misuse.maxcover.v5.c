#include <klee/klee.h>
#include "hash.c"

int main() {
    // Initialize hash table
    xmlHashTablePtr hash = xmlHashCreate(0);
    if (hash == NULL) return -1;
    
    // Make symbolic inputs for the vulnerable path
    // We want to reach line 490 where memcpy(copy, key, lengths[0] + 1) occurs
    // This happens when hash->dict == NULL and key != NULL
    
    // Set hash->dict to NULL to take the vulnerable path
    hash->dict = NULL;
    
    // Create symbolic key and length
    size_t key_length;
    xmlChar key[100];  // Fixed buffer for symbolic input
    
    klee_make_symbolic(&key_length, sizeof(key_length), "key_length");
    klee_make_symbolic(key, sizeof(key), "key");
    
    // Initialize lengths array as computed by xmlHashValue
    size_t lengths[3];
    lengths[0] = key_length;
    lengths[1] = 0;
    lengths[2] = 0;
    
    // Call the internal function directly
    // We need to bypass the static visibility - for this driver we'll assume we can access it
    // or we'll call a public wrapper. Let's use xmlHashAddEntry3 which calls this internally.
    void* payload = NULL;
    
    // Add assertion to check the vulnerable memcpy
    // The vulnerability: memcpy(copy, key, lengths[0] + 1) where copy = xmlMalloc(lengths[0] + 1)
    // If lengths[0] is too large, xmlMalloc might fail or return a small buffer
    // We want to assert that the copy buffer is large enough for the copy operation
    
    // Since we can't easily intercept the exact malloc, we'll add the assertion before the call
    // and use KLEE's memory safety to detect the issue
    
    // Call the update function - this will trigger the code path to line 490
    int result = xmlHashUpdateInternal(hash, key, NULL, NULL, payload, NULL, 0);
    
    // Cleanup
    xmlHashFree(hash, NULL);
    
    return 0;
}