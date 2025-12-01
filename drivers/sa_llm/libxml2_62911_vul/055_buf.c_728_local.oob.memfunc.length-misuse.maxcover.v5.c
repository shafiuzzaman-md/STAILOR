#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBufPtr buf;
    xmlChar *str;
    int len;

    buf = xmlBufCreate();
    klee_make_symbolic(&str, sizeof(str), "str");
    klee_make_symbolic(&len, sizeof(len), "len");

    int result = xmlBufAdd(buf, str, len);
    
    if (buf->content != NULL && buf->alloc != XML_BUFFER_ALLOC_IO && 
        buf->size - buf->use >= 100 && buf->use > 0) {
        klee_assert(buf->use <= buf->size);
    }

    xmlBufFree(buf);
    return 0;
}