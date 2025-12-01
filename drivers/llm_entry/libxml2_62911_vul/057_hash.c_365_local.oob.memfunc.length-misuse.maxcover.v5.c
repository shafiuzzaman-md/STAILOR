#include <klee/klee.h>
#include "hash.c"

int main() {
    xmlHashTablePtr hash;
    unsigned size;
    
    klee_make_symbolic(&hash, sizeof(hash), "hash");
    klee_make_symbolic(&size, sizeof(size), "size");
    
    xmlHashGrow(hash, size);
    
    return 0;
}