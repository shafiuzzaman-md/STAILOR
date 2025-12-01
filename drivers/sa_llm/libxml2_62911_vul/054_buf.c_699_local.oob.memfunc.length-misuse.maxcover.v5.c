#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBufPtr buf;
    size_t size;
    
    klee_make_symbolic(&buf, sizeof(buf), "buf");
    klee_make_symbolic(&size, sizeof(size), "size");
    
    klee_assume(buf != NULL);
    klee_assume(!buf->error);
    klee_assume(buf->alloc == XML_BUFFER_ALLOC_IO);
    klee_assume(buf->contentIO != NULL);
    
    size_t start_buf = buf->content - buf->contentIO;
    klee_assume(start_buf > size);
    
    int result = xmlBufResize(buf, size);
    
    klee_assert(buf->use <= buf->size - start_buf);
    
    return 0;
}