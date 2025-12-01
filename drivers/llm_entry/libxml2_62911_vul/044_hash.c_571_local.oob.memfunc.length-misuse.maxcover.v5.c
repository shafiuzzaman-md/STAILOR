#include <klee/klee.h>
#include "hash.c"

int main() {
    // Initialize hash table
    xmlHashTablePtr hash = xmlHashCreate(0);
    if (hash == NULL) return -1;

    // Create symbolic inputs
    xmlChar key[100];
    void* payload = NULL;
    
    // Make inputs symbolic
    klee_make_symbolic(key, sizeof(key), "key");
    
    // Call entry function
    int result = xmlHashAddEntry(hash, key, payload);
    
    // Cleanup
    xmlHashFree(hash, NULL);
    
    return 0;
}