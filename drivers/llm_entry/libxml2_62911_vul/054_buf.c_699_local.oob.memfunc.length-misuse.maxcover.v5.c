#include <klee/klee.h>
#include "buf.c"

int main() {
    xmlBuf buf_struct;
    xmlBufPtr buf = &buf_struct;
    
    klee_make_symbolic(&buf_struct, sizeof(xmlBuf), "buf");
    
    size_t size;
    klee_make_symbolic(&size, sizeof(size_t), "size");
    
    xmlBufResize(buf, size);
    
    return 0;
}