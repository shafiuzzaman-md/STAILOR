#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBufPtr buf = (xmlBufPtr)malloc(sizeof(xmlBuf));
    klee_make_symbolic(buf, sizeof(xmlBuf), "buf");
    
    // Initialize buffer fields symbolically
    klee_make_symbolic(&buf->alloc, sizeof(buf->alloc), "buf_alloc");
    klee_make_symbolic(&buf->error, sizeof(buf->error), "buf_error");
    klee_make_symbolic(&buf->use, sizeof(buf->use), "buf_use");
    klee_make_symbolic(&buf->size, sizeof(buf->size), "buf_size");
    
    // Allocate contentIO buffer
    buf->contentIO = (xmlChar*)malloc(1024);
    klee_make_symbolic(buf->contentIO, 1024, "contentIO");
    
    // Set content to point somewhere within contentIO
    size_t start_buf;
    klee_make_symbolic(&start_buf, sizeof(start_buf), "start_buf");
    klee_assume(start_buf < 1024);
    buf->content = buf->contentIO + start_buf;
    
    // Symbolic len parameter
    size_t len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Call the target function
    size_t result = xmlBufShrink(buf, len);
    
    // Assertion for the suspicious line 350 - check memmove bounds
    if ((buf != NULL) && (buf->error == 0) && 
        (buf->alloc == XML_BUFFER_ALLOC_IO) && (buf->contentIO != NULL)) {
        size_t current_start_buf = buf->content - buf->contentIO;
        if (current_start_buf >= buf->size) {
            // Check that memmove at line 350 won't overflow
            klee_assert(buf->use <= (1024 - (buf->content - buf->contentIO)));
        }
    }
    
    // Cleanup
    if (buf->contentIO != NULL) free(buf->contentIO);
    free(buf);
    
    return 0;
}