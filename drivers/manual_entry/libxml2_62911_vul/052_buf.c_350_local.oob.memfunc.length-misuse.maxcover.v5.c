#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBufPtr buf = (xmlBufPtr)malloc(sizeof(xmlBuf));
    klee_make_symbolic(buf, sizeof(xmlBuf), "buf");
    
    // Initialize essential fields to avoid immediate NULL/error returns
    if (buf != NULL) {
        buf->error = 0;
        buf->alloc = XML_BUFFER_ALLOC_IO;
        buf->use = 0;
        buf->size = 1024;
        
        // Allocate contentIO buffer
        buf->contentIO = (xmlChar*)malloc(2048);
        klee_make_symbolic(buf->contentIO, 2048, "contentIO");
        
        // Set content pointer within contentIO bounds
        buf->content = buf->contentIO + 512;
        
        // Initialize content with some data
        buf->use = 256;
        for (int i = 0; i < buf->use; i++) {
            buf->content[i] = 'A';
        }
    }
    
    size_t len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Call the target function
    xmlBufShrink(buf, len);
    
    // Cleanup
    if (buf != NULL) {
        if (buf->contentIO != NULL) {
            free(buf->contentIO);
        }
        free(buf);
    }
    
    return 0;
}