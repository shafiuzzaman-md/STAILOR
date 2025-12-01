#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBufPtr buf;
    xmlChar *str;
    int len;

    klee_make_symbolic(&buf, sizeof(buf), "buf");
    klee_make_symbolic(&str, sizeof(str), "str");
    klee_make_symbolic(&len, sizeof(len), "len");

    if (buf != NULL) {
        klee_make_symbolic(&buf->size, sizeof(buf->size), "buf_size");
        klee_make_symbolic(&buf->use, sizeof(buf->use), "buf_use");
        klee_make_symbolic(&buf->alloc, sizeof(buf->alloc), "buf_alloc");
        klee_make_symbolic(&buf->content, sizeof(buf->content), "buf_content");
        klee_make_symbolic(&buf->contentIO, sizeof(buf->contentIO), "buf_contentIO");
        klee_make_symbolic(&buf->error, sizeof(buf->error), "buf_error");
    }

    xmlBufAdd(buf, str, len);
    return 0;
}