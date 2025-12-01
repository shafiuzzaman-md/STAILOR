#include <klee/klee.h>
#include "uri.c"

int main() {
    unsigned int symbolic_size;
    klee_make_symbolic(&symbolic_size, sizeof(symbolic_size), "symbolic_size");
    klee_assume(symbolic_size > 0 && symbolic_size < 1024);
    
    xmlChar symbolic_buffer[symbolic_size + 1];
    klee_make_symbolic(symbolic_buffer, sizeof(symbolic_buffer), "symbolic_buffer");
    symbolic_buffer[symbolic_size] = '\0';
    
    xmlPathToURI(symbolic_buffer);
    return 0;
}