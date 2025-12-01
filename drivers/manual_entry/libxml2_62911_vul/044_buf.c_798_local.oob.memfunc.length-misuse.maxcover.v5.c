#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBuf buf_struct;
    xmlBufPtr buf = &buf_struct;
    
    // Initialize buffer fields symbolically
    klee_make_symbolic(&buf->size, sizeof(buf->size), "buf_size");
    klee_make_symbolic(&buf->use, sizeof(buf->use), "buf_use");
    klee_make_symbolic(&buf->alloc, sizeof(buf->alloc), "buf_alloc");
    klee_make_symbolic(&buf->error, sizeof(buf->error), "buf_error");
    klee_make_symbolic(&buf->compat_use, sizeof(buf->compat_use), "buf_compat_use");
    klee_make_symbolic(&buf->compat_size, sizeof(buf->compat_size), "buf_compat_size");
    
    // Allocate content buffer with symbolic size
    unsigned content_size;
    klee_make_symbolic(&content_size, sizeof(content_size), "content_size");
    klee_assume(content_size > 0 && content_size < 1024); // Reasonable bound
    buf->content = (xmlChar*)malloc(content_size);
    klee_make_symbolic(buf->content, content_size, "buf_content");
    
    // Symbolic input string and length
    xmlChar str[256];
    int len;
    klee_make_symbolic(str, sizeof(str), "str");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Call the vulnerable function
    xmlBufAdd(buf, str, len);
    
    free(buf->content);
    return 0;
}