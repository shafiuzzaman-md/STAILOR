#include <klee/klee.h>
#include "buf.h"
#include "tree.h"

int main() {
    xmlBufPtr buf;
    xmlChar str[100];
    int len;

    buf = xmlBufCreate();
    if (buf == NULL) return -1;

    klee_make_symbolic(str, sizeof(str), "str");
    klee_make_symbolic(&len, sizeof(len), "len");

    xmlBufAdd(buf, str, len);

    xmlBufFree(buf);
    return 0;
}