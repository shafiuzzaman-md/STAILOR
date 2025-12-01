#include <klee/klee.h>
#include "hash.c"

int main() {
    xmlHashTablePtr hash;
    xmlChar *key;
    xmlChar *key2;
    xmlChar *key3;
    void *payload;
    int lengths[3];
    
    // Initialize hash table
    hash = xmlHashCreate(0);
    if (hash == NULL) return 0;
    
    // Make inputs symbolic
    klee_make_symbolic(&key, sizeof(key), "key");
    klee_make_symbolic(&key2, sizeof(key2), "key2");
    klee_make_symbolic(&key3, sizeof(key3), "key3");
    klee_make_symbolic(&payload, sizeof(payload), "payload");
    klee_make_symbolic(lengths, sizeof(lengths), "lengths");
    
    // Call xmlHashAddEntry3 as the entry function
    xmlHashAddEntry3(hash, key, key2, key3, payload);
    
    // Cleanup
    xmlHashFree(hash, NULL);
    return 0;
}