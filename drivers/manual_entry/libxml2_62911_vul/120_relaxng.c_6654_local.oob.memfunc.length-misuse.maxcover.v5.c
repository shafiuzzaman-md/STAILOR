#include <klee/klee.h>
#include "relaxng.c"

int main() {
    // Symbolic buffer and size for xmlRelaxNGNewMemParserCtxt
    int size;
    klee_make_symbolic(&size, sizeof(size), "size");
    
    // Constrain size to be positive and reasonable
    klee_assume(size > 0);
    klee_assume(size <= 1024);
    
    char buffer[size];
    klee_make_symbolic(buffer, size, "buffer");
    
    // Call the entry function
    xmlRelaxNGNewMemParserCtxt(buffer, size);
    
    return 0;
}