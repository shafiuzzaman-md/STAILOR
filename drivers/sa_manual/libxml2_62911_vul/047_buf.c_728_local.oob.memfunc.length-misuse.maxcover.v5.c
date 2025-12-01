#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBufPtr buf;
    xmlChar *str;
    int len;

    buf = xmlBufCreate();
    klee_assume(buf != NULL);

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0 && len < 1000);

    str = (xmlChar *)malloc(len + 1);
    klee_make_symbolic(str, len + 1, "str");
    if (len > 0) {
        str[len] = 0;
    }

    int result = xmlBufAdd(buf, str, len);
    
    if (buf->content != NULL && buf->use > 0) {
        klee_assert(buf->use <= buf->size);
    }

    xmlBufFree(buf);
    if (str != NULL) free(str);
    return 0;
}