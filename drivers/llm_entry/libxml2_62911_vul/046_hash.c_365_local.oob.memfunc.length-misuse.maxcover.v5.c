#include <klee/klee.h>
#include "hash.c"

int main() {
    // Initialize a symbolic hash table
    xmlHashTablePtr hash = xmlHashCreate(0);
    if (hash == NULL) return -1;

    // Make symbolic size parameter
    unsigned size;
    klee_make_symbolic(&size, sizeof(size), "size");

    // Call the vulnerable function
    xmlHashGrow(hash, size);

    // Cleanup
    xmlHashFree(hash, NULL);
    return 0;
}