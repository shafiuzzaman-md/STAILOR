#include <klee/klee.h>
#include "schematron.c"

int main() {
    int size;
    char buffer[1024];
    
    klee_make_symbolic(&size, sizeof(size), "size");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    xmlSchematronNewMemParserCtxt(buffer, size);
    
    return 0;
}