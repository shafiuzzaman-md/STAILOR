#include <klee/klee.h>
#include "relaxng.c"

int main() {
    int size;
    klee_make_symbolic(&size, sizeof(size), "size");
    
    char buffer[1024];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    xmlRelaxNGNewMemParserCtxt(buffer, size);
    
    return 0;
}