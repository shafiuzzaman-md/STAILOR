#include <klee/klee.h>
#include "buf.h"
#include "tree.h"

int main() {
    xmlBuf buf_struct;
    xmlBufPtr buf = &buf_struct;
    
    klee_make_symbolic(&buf_struct, sizeof(buf_struct), "buf");
    
    unsigned buf_size;
    klee_make_symbolic(&buf_size, sizeof(buf_size), "buf_size");
    buf->size = buf_size;
    
    unsigned buf_use;
    klee_make_symbolic(&buf_use, sizeof(buf_use), "buf_use");
    buf->use = buf_use;
    
    int buf_alloc;
    klee_make_symbolic(&buf_alloc, sizeof(buf_alloc), "buf_alloc");
    buf->alloc = buf_alloc;
    
    int buf_error;
    klee_make_symbolic(&buf_error, sizeof(buf_error), "buf_error");
    buf->error = buf_error;
    
    unsigned buf_compat_use;
    klee_make_symbolic(&buf_compat_use, sizeof(buf_compat_use), "buf_compat_use");
    buf->compat_use = buf_compat_use;
    
    unsigned buf_compat_size;
    klee_make_symbolic(&buf_compat_size, sizeof(buf_compat_size), "buf_compat_size");
    buf->compat_size = buf_compat_size;
    
    char content_buffer[1024];
    klee_make_symbolic(content_buffer, sizeof(content_buffer), "content_buffer");
    buf->content = (xmlChar*)content_buffer;
    
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    char str_buffer[1024];
    klee_make_symbolic(str_buffer, sizeof(str_buffer), "str_buffer");
    const xmlChar* str = (const xmlChar*)str_buffer;
    
    int result = xmlBufAdd(buf, str, len);
    
    klee_assert(!(buf->content != NULL && buf->use + len < buf->size));
    
    return 0;
}