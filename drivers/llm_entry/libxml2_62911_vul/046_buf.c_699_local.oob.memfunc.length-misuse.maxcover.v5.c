#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBufPtr buf;
    size_t size;
    
    klee_make_symbolic(&buf, sizeof(buf), "buf");
    klee_make_symbolic(&size, sizeof(size), "size");
    
    xmlBufResize(buf, size);
    
    return 0;
}