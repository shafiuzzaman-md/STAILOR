#include <klee/klee.h>
#include "relaxng.c"

int main() {
    const char* buffer;
    int size;
    
    klee_make_symbolic(&buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&size, sizeof(size), "size");
    
    xmlRelaxNGParserCtxtPtr ret = xmlRelaxNGNewMemParserCtxt(buffer, size);
    
    if (ret != NULL) {
        klee_assert(ret->size >= 0);
    }
    
    return 0;
}