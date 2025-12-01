#include <klee/klee.h>
#include "buf.c"
#include "buf.h"

int main() {
    xmlBufPtr buf;
    size_t len;
    
    // Symbolically initialize buffer structure
    buf = (xmlBufPtr)malloc(sizeof(struct _xmlBuf));
    klee_make_symbolic(buf, sizeof(struct _xmlBuf), "buf");
    
    // Initialize buffer fields to avoid undefined behavior
    if (buf != NULL) {
        buf->error = 0;
        buf->alloc = XML_BUFFER_ALLOC_IO;
        
        // Allocate and initialize contentIO buffer
        buf->contentIO = (xmlChar*)malloc(1024);
        klee_make_symbolic(buf->contentIO, 1024, "contentIO");
        
        // Set content pointer within contentIO buffer
        buf->content = buf->contentIO + 512;
        buf->size = 512;
        buf->use = 256;
        
        // Make len symbolic
        klee_make_symbolic(&len, sizeof(len), "len");
    }
    
    // Call the target function
    xmlBufShrink(buf, len);
    
    // Assertion for potential OOB at line 350
    if (buf != NULL && buf->contentIO != NULL && buf->content != NULL) {
        size_t start_buf = buf->content - buf->contentIO;
        if (start_buf >= buf->size) {
            // Check that memmove at line 350 doesn't access out of bounds
            klee_assert(buf->use <= buf->size);
        }
    }
    
    // Cleanup
    if (buf != NULL) {
        if (buf->contentIO != NULL) {
            free(buf->contentIO);
        }
        free(buf);
    }
    
    return 0;
}