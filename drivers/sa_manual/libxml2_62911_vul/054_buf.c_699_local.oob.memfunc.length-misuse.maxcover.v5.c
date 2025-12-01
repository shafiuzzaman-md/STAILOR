#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBuf buf;
    xmlBufPtr buf_ptr = &buf;
    
    klee_make_symbolic(&buf, sizeof(buf), "buf");
    
    size_t size;
    klee_make_symbolic(&size, sizeof(size), "size");
    
    int result = xmlBufResize(buf_ptr, size);
    
    if ((buf.alloc == XML_BUFFER_ALLOC_IO) && (buf.contentIO != NULL)) {
        size_t start_buf = buf.content - buf.contentIO;
        if (start_buf > buf.size) {
            klee_assert(buf.use <= buf.size - start_buf);
        }
    }
    
    return 0;
}