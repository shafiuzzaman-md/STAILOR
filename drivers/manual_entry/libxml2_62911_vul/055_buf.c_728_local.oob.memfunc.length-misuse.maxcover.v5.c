#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBufPtr buf;
    xmlChar *str;
    int len;

    buf = xmlBufCreate();
    if (buf == NULL) return 0;

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= -1);
    klee_assume(len <= 1000);

    str = (xmlChar*)malloc(1001 * sizeof(xmlChar));
    if (str == NULL) {
        xmlBufFree(buf);
        return 0;
    }
    klee_make_symbolic(str, 1001 * sizeof(xmlChar), "str");
    str[1000] = 0;

    xmlBufAdd(buf, str, len);

    free(str);
    xmlBufFree(buf);
    return 0;
}