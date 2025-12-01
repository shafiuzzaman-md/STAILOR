#include <klee/klee.h>
#include "buf.c"
#include "buf.h"

int main() {
    xmlBuf buf_struct;
    xmlBufPtr buf = &buf_struct;
    
    klee_make_symbolic(&buf_struct, sizeof(xmlBuf), "buf");
    
    buf->error = 0;
    buf->alloc = XML_BUFFER_ALLOC_IMMUTABLE;
    
    size_t use;
    klee_make_symbolic(&use, sizeof(use), "use");
    klee_assume(use <= 1024);
    buf->use = use;
    
    size_t len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len <= use);
    
    char content[1025];
    klee_make_symbolic(content, sizeof(content), "content");
    buf->content = (xmlChar*)content;
    
    size_t result = xmlBufShrink(buf, len);
    
    klee_assert(buf->use + len <= 1024);
    
    return 0;
}