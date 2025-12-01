#include <klee/klee.h>
#include "HTMLparser.h"

int main() {
    unsigned char out_buf[1024];
    unsigned char in_buf[1024];
    int outlen;
    int inlen;

    klee_make_symbolic(&outlen, sizeof(outlen), "outlen");
    klee_make_symbolic(&inlen, sizeof(inlen), "inlen");
    klee_make_symbolic(in_buf, sizeof(in_buf), "in_buf");

    if (outlen < 0 || outlen > 1024) outlen = 1024;
    if (inlen < 0 || inlen > 1024) inlen = 1024;

    int result = UTF8ToHtml(out_buf, &outlen, in_buf, &inlen);
    
    return 0;
}