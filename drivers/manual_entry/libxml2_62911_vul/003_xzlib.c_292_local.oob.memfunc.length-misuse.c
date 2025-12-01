#include <klee/klee.h>
#include "xzlib.h"

int main() {
    unsigned char buffer[1024];
    unsigned int size = 1024;
    
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&size, sizeof(size), "size");
    
    xz_decompress(buffer, size);
    
    return 0;
}