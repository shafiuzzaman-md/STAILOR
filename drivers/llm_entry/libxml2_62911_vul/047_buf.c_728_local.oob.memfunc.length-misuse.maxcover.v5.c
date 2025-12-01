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

    xmlBufAdd(buf, str, len);

    return 0;
}