#include <klee/klee.h>
#include "hash.c"

int main() {
    // Initialize hash table
    xmlHashTablePtr hash = xmlHashCreate();
    if (hash == NULL) return -1;

    // Create symbolic inputs
    xmlChar key[10];
    xmlChar key2[10];
    xmlChar key3[10];
    void* payload = NULL;
    
    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(key2, sizeof(key2), "key2");
    klee_make_symbolic(key3, sizeof(key3), "key3");
    
    // Null terminate the strings
    key[9] = '\0';
    key2[9] = '\0';
    key3[9] = '\0';

    // Call entry function - using xmlHashAddEntry3 as it's the most complex and calls xmlHashUpdateInternal
    int result = xmlHashAddEntry3(hash, key, key2, key3, payload);
    
    // Cleanup
    xmlHashFree(hash, xmlHashDefaultDeallocator);
    
    return 0;
}