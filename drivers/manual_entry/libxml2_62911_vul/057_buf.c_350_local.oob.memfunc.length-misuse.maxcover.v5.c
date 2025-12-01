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
        buf->contentIO = (xmlChar*)malloc(1024);
        klee_make_symbolic(buf->contentIO, 1024, "contentIO");
        
        buf->content = buf->contentIO + (buf->size / 2);
        klee_make_symbolic(buf->content, 1024 - (buf->size / 2), "content");
    }
    
    size_t len = klee_int("len");
    
    // Call the target function
    xmlBufShrink(buf, len);
    
    // Cleanup
    if (buf != NULL) {
        if (buf->contentIO != NULL) free(buf->contentIO);
        free(buf);
    }
    
    return 0;
}