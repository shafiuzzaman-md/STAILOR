#include <klee/klee.h>
#include "hash.h"
#include "dict.h"

int main() {
    xmlHashTablePtr hash;
    unsigned size;
    
    // Symbolic inputs
    klee_make_symbolic(&hash, sizeof(hash), "hash");
    klee_make_symbolic(&size, sizeof(size), "size");
    
    // Assume hash is allocated and initialized
    klee_assume(hash != NULL);
    
    // Call the vulnerable function
    int result = xmlHashGrow(hash, size);
    
    // Assertion for the suspicious line 365
    // Check that size * sizeof(table[0]) doesn't overflow or cause OOB
    if (table != NULL) {
        klee_assert(size == 0 || (size_t)size <= SIZE_MAX / sizeof(table[0]));
    }
    
    return 0;
}