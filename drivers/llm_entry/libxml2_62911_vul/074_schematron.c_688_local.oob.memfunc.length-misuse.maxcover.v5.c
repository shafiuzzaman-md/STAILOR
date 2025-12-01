#include <klee/klee.h>
#include "schematron.h"

int main() {
    int size;
    klee_make_symbolic(&size, sizeof(size), "size");
    
    char buffer[1024];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    xmlSchematronNewMemParserCtxt(buffer, size);
    
    return 0;
}