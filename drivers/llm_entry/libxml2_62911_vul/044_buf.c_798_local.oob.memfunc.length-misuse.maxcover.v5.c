#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBufPtr buf;
    xmlChar str[100];
    int len;

    // Initialize buffer
    buf = xmlBufCreate();
    if (buf == NULL) return -1;

    // Make inputs symbolic
    klee_make_symbolic(str, sizeof(str), "str");
    klee_make_symbolic(&len, sizeof(len), "len");

    // Call entry function
    xmlBufAdd(buf, str, len);

    xmlBufFree(buf);
    return 0;
}