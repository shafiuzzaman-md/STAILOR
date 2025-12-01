#include <klee/klee.h>
#include "hash.h"

int main() {
    // Initialize hash table
    xmlHashTablePtr hash = xmlHashCreate(0);
    if (hash == NULL) return 0;
    
    // Make symbolic keys and lengths
    xmlChar key[100];
    xmlChar key2[100];
    xmlChar key3[100];
    size_t lengths[3];
    
    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(key2, sizeof(key2), "key2");
    klee_make_symbolic(key3, sizeof(key3), "key3");
    klee_make_symbolic(lengths, sizeof(lengths), "lengths");
    
    // Ensure keys are null-terminated for safety
    key[99] = '\0';
    key2[99] = '\0';
    key3[99] = '\0';
    
    // Set up lengths to be reasonable values
    klee_assume(lengths[0] < 100);
    klee_assume(lengths[1] < 100);
    klee_assume(lengths[2] < 100);
    
    // Call the vulnerable function
    xmlHashUpdateInternal(hash, key, key2, key3, NULL, NULL, 0);
    
    // Clean up
    xmlHashFree(hash, NULL);
    
    return 0;
}