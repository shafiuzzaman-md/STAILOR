#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBufPtr buf = (xmlBufPtr)malloc(sizeof(xmlBuf));
    klee_make_symbolic(buf, sizeof(xmlBuf), "buf");
    
    // Initialize buffer fields to avoid null dereferences
    if (buf != NULL) {
        buf->error = 0;
        buf->alloc = XML_BUFFER_ALLOC_IO;
        buf->use = klee_int("buf_use");
        buf->size = klee_int("buf_size");
        
        // Allocate content buffers
        size_t content_size = 1024;
        buf->contentIO = (xmlChar*)malloc(content_size);
        buf->content = buf->contentIO;
        
        klee_make_symbolic(buf->contentIO, content_size, "contentIO");
        
        // Ensure use doesn't exceed size
        klee_assume(buf->use <= buf->size);
        klee_assume(buf->size <= content_size);
    }
    
    size_t len = klee_int("len");
    xmlBufShrink(buf, len);
    
    if (buf != NULL) {
        if (buf->contentIO != NULL) free(buf->contentIO);
        free(buf);
    }
    
    return 0;
}