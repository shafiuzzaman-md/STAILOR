#include <klee/klee.h>
#include "buf.c"

int main() {
    xmlBuf buf_struct;
    xmlBufPtr buf = &buf_struct;
    
    klee_make_symbolic(&buf_struct, sizeof(xmlBuf), "buf");
    
    size_t len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    size_t result = xmlBufShrink(buf, len);
    
    klee_assert(buf->use <= buf->size);
    
    return 0;
}