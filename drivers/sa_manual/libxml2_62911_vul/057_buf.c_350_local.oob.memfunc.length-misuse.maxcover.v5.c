#include <klee/klee.h>
#include "buf.c"

int main() {
    xmlBuf buf;
    size_t len;
    
    klee_make_symbolic(&buf, sizeof(buf), "buf");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    klee_assume(buf.error == 0);
    klee_assume(len > 0);
    klee_assume(len <= buf.use);
    
    if ((buf.alloc == XML_BUFFER_ALLOC_IO) && (buf.contentIO != NULL)) {
        size_t start_buf = buf.content - buf.contentIO;
        if (start_buf >= buf.size) {
            klee_assert(buf.use <= buf.size);
            memmove(buf.contentIO, &buf.content[0], buf.use);
        }
    }
    
    xmlBufShrink(&buf, len);
    return 0;
}