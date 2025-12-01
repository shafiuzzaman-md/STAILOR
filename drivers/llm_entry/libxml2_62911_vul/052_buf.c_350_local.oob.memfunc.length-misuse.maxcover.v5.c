#include <klee/klee.h>
#include "buf.c"
#include "buf.h"

int main() {
    // Create a symbolic buffer structure
    xmlBuf buf;
    klee_make_symbolic(&buf, sizeof(buf), "buf");
    
    // Initialize buffer fields with symbolic values
    klee_make_symbolic(&buf.alloc, sizeof(buf.alloc), "alloc");
    klee_make_symbolic(&buf.error, sizeof(buf.error), "error");
    klee_make_symbolic(&buf.use, sizeof(buf.use), "use");
    klee_make_symbolic(&buf.size, sizeof(buf.size), "size");
    
    // Allocate symbolic content buffers
    unsigned char contentIO[1024];
    unsigned char content[1024];
    klee_make_symbolic(contentIO, sizeof(contentIO), "contentIO");
    klee_make_symbolic(content, sizeof(content), "content");
    
    buf.contentIO = contentIO;
    buf.content = content;
    
    // Create symbolic len parameter
    size_t len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Call the target function
    xmlBufShrink(&buf, len);
    
    return 0;
}