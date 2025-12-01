#include <klee/klee.h>
#include "hash.h"

int main() {
    xmlHashTablePtr hash;
    unsigned size;
    
    // Symbolically initialize hash table structure
    hash = (xmlHashTablePtr)malloc(sizeof(xmlHashTable));
    klee_make_symbolic(hash, sizeof(xmlHashTable), "hash");
    
    // Symbolic size parameter
    klee_make_symbolic(&size, sizeof(size), "size");
    
    // Call xmlHashGrow which contains the suspicious memset
    int result = xmlHashGrow(hash, size);
    
    // Assertion to check for potential out-of-bounds write
    // The suspicious line is memset(table, 0, size * sizeof(table[0]))
    // We need to ensure size * sizeof(table[0]) doesn't exceed allocated bounds
    if (result == 0 && hash->table != NULL) {
        // Check that the allocated table size is reasonable
        klee_assert(size <= SIZE_MAX / sizeof(xmlHashEntry));
    }
    
    return 0;
}