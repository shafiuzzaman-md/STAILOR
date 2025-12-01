#include <klee/klee.h>
#include "encoding.h"

int main() {
    unsigned char out_buf[100];
    unsigned char in_buf[100];
    int outlen;
    int inlenb;

    klee_make_symbolic(&outlen, sizeof(outlen), "outlen");
    klee_make_symbolic(&inlenb, sizeof(inlenb), "inlenb");
    klee_make_symbolic(in_buf, sizeof(in_buf), "in_buf");

    klee_assume(outlen >= 0 && outlen <= 100);
    klee_assume(inlenb >= 0 && inlenb <= 100);

    UTF8ToUTF8(out_buf, &outlen, in_buf, &inlenb);

    klee_assert(inlenb >= 0 && inlenb <= 100);

    return 0;
}