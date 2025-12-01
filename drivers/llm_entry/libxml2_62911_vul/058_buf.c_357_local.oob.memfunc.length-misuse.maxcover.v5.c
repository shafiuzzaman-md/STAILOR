#include <klee/klee.h>
#include "buf.c"
#include "buf.h"

int main() {
    // Create a symbolic buffer structure
    xmlBuf buf;
    
    // Initialize buffer fields symbolically
    klee_make_symbolic(&buf.alloc, sizeof(buf.alloc), "alloc");
    klee_make_symbolic(&buf.error, sizeof(buf.error), "error");
    klee_make_symbolic(&buf.use, sizeof(buf.use), "use");
    klee_make_symbolic(&buf.size, sizeof(buf.size), "size");
    
    // Allocate content buffer
    unsigned char content[1024];
    klee_make_symbolic(content, sizeof(content), "content");
    buf.content = content;
    buf.contentIO = NULL;
    
    // Create symbolic len parameter
    size_t len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Call the target function
    xmlBufShrink(&buf, len);
    
    return 0;
}