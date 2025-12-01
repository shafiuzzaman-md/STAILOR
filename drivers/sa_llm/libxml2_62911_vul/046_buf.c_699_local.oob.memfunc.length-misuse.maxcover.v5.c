#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBuf buf;
    xmlBufPtr buf_ptr = &buf;
    
    // Initialize symbolic buffer fields
    klee_make_symbolic(&buf, sizeof(buf), "buf");
    
    // Constrain buffer to avoid immediate errors
    klee_assume(buf_ptr != NULL);
    klee_assume(buf_ptr->error == 0);
    klee_assume(buf_ptr->alloc == XML_BUFFER_ALLOC_IO);
    klee_assume(buf_ptr->contentIO != NULL);
    klee_assume(buf_ptr->content != NULL);
    
    // Make content and contentIO point to valid memory regions
    static unsigned char contentIO_storage[4096];
    static unsigned char content_storage[4096];
    buf_ptr->contentIO = contentIO_storage;
    buf_ptr->content = content_storage;
    
    // Symbolic size parameters
    size_t size;
    klee_make_symbolic(&size, sizeof(size), "size");
    
    // Symbolic buffer use field
    klee_make_symbolic(&buf_ptr->use, sizeof(buf_ptr->use), "buf_use");
    
    // Symbolic start_buf (distance between content and contentIO)
    size_t start_buf;
    klee_make_symbolic(&start_buf, sizeof(start_buf), "start_buf");
    
    // Constrain to reach the vulnerable path
    klee_assume(buf_ptr->alloc == XML_BUFFER_ALLOC_IO);
    klee_assume(buf_ptr->contentIO != NULL);
    klee_assume(start_buf > size);  // This ensures we take the memmove path
    
    // Call the target function
    int result = xmlBufResize(buf_ptr, size);
    
    // Assertion for the suspicious memmove at line 699
    // Check that we don't copy more data than available in source buffer
    if (buf_ptr->contentIO != NULL && buf_ptr->content != NULL) {
        klee_assert(buf_ptr->use <= (buf_ptr->content + buf_ptr->use) - buf_ptr->content);
    }
    
    return 0;
}