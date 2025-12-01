#include "buf.c"
#include <klee/klee.h>

typedef struct _xmlBuf xmlBuf;
typedef xmlBuf *xmlBufPtr;

struct _xmlBuf {
    size_t use;
    size_t size;
    int alloc;
    int error;
    xmlChar *content;
    xmlChar *contentIO;
};

int main() {
    xmlBuf buf;
    size_t len;

    klee_make_symbolic(&buf, sizeof(buf), "buf");
    klee_make_symbolic(&len, sizeof(len), "len");

    klee_assume(buf.error == 0);
    klee_assume(buf.alloc == XML_BUFFER_ALLOC_IO);
    klee_assume(buf.contentIO != NULL);
    klee_assume(buf.content != NULL);
    klee_assume(len > 0);
    klee_assume(len <= buf.use);

    size_t start_buf = buf.content - buf.contentIO;
    klee_assume(start_buf >= buf.size);

    klee_assert(buf.use <= buf.size - start_buf);

    xmlBufShrink(&buf, len);
    return 0;
}