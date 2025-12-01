#include <klee/klee.h>
#include "hash.c"

int main() {
    xmlHashTablePtr hash;
    xmlChar *key, *key2, *key3;
    void *payload = NULL;
    xmlHashDeallocator dealloc = NULL;
    int update = 0;
    
    // Initialize hash table
    hash = xmlHashCreate(8);
    if (hash == NULL) return -1;
    
    // Make keys symbolic
    unsigned key_len, key2_len, key3_len;
    klee_make_symbolic(&key_len, sizeof(key_len), "key_len");
    klee_make_symbolic(&key2_len, sizeof(key2_len), "key2_len"); 
    klee_make_symbolic(&key3_len, sizeof(key3_len), "key3_len");
    
    // Bound key lengths to reasonable values
    klee_assume(key_len < 256);
    klee_assume(key2_len < 256);
    klee_assume(key3_len < 256);
    
    key = (xmlChar*)malloc(key_len + 1);
    key2 = (xmlChar*)malloc(key2_len + 1);
    key3 = (xmlChar*)malloc(key3_len + 1);
    
    if (key) klee_make_symbolic(key, key_len + 1, "key");
    if (key2) klee_make_symbolic(key2, key2_len + 1, "key2");
    if (key3) klee_make_symbolic(key3, key3_len + 1, "key3");
    
    // Call the hash update function
    xmlHashUpdateEntry3(hash, key, key2, key3, payload, dealloc, update);
    
    // Cleanup
    if (key) free(key);
    if (key2) free(key2);
    if (key3) free(key3);
    xmlHashFree(hash, dealloc);
    
    return 0;
}