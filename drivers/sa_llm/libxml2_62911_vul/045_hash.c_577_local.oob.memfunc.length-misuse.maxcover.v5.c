#include <klee/klee.h>
#include "hash.h"

int main() {
    // Initialize hash table
    xmlHashTablePtr hash = xmlHashCreate(0);
    if (hash == NULL) return -1;

    // Create symbolic inputs
    xmlChar key[100];
    xmlChar key2[100];
    xmlChar key3[100];
    void* payload = NULL;
    
    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(key2, sizeof(key2), "key2");
    klee_make_symbolic(key3, sizeof(key3), "key3");
    
    // Null terminate the strings
    key[99] = '\0';
    key2[99] = '\0';
    key3[99] = '\0';

    // Call the vulnerable function
    int result = xmlHashAddEntry3(hash, key, key2, key3, payload);

    // Cleanup
    xmlHashFree(hash, xmlHashDefaultDeallocator);

    return 0;
}