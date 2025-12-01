#include <klee/klee.h>
#include "encoding.h"

int main() {
    unsigned char out_buf[100];
    unsigned char in_buf[100];
    int outlen;
    int inlen;

    klee_make_symbolic(&outlen, sizeof(outlen), "outlen");
    klee_make_symbolic(&inlen, sizeof(inlen), "inlen");
    klee_make_symbolic(in_buf, sizeof(in_buf), "in_buf");

    klee_assume(outlen >= 0 && outlen <= 100);
    klee_assume(inlen >= 0 && inlen <= 100);

    int result = UTF8ToUTF8(out_buf, &outlen, in_buf, &inlen);
    
    klee_assert(!(result >= 0 && outlen > 100));
    
    return 0;
}