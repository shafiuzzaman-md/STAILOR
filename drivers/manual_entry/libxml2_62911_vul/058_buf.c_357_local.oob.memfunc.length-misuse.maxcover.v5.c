#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBufPtr buf;
    size_t len;
    
    // Allocate and initialize buffer structure symbolically
    buf = (xmlBufPtr)malloc(sizeof(xmlBuf));
    klee_make_symbolic(buf, sizeof(xmlBuf), "buf");
    
    // Initialize buffer fields to avoid null dereferences
    buf->error = 0;
    buf->alloc = XML_BUFFER_ALLOC_IMMUTABLE; // Use a safe allocation type
    buf->use = 0;
    buf->size = 0;
    buf->content = NULL;
    buf->contentIO = NULL;
    buf->compat_use = 0;
    buf->compat_size = 0;
    
    // Make content buffer symbolic with reasonable size
    buf->content = (xmlChar*)malloc(1024);
    klee_make_symbolic(buf->content, 1024, "content");
    
    // Initialize use and size fields symbolically with constraints
    klee_make_symbolic(&buf->use, sizeof(buf->use), "use");
    klee_make_symbolic(&buf->size, sizeof(buf->size), "size");
    
    // Constrain use to be less than size to avoid obvious out-of-bounds
    klee_assume(buf->use < buf->size);
    klee_assume(buf->use < 1024);
    klee_assume(buf->size <= 1024);
    
    // Make len symbolic with constraint that it's <= use
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len <= buf->use);
    
    // Call the target function
    xmlBufShrink(buf, len);
    
    // Cleanup
    if (buf->content) free(buf->content);
    free(buf);
    
    return 0;
}