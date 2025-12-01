#include <klee/klee.h>
#include "HTMLparser.h"

int main() {
    unsigned char out_buf[1024];
    unsigned char in_buf[1024];
    int outlen = 1024;
    int inlen;

    klee_make_symbolic(&inlen, sizeof(inlen), "inlen");
    klee_assume(inlen >= 0 && inlen <= 1024);
    
    klee_make_symbolic(in_buf, inlen, "in_buf");

    int result = UTF8ToHtml(out_buf, &outlen, in_buf, &inlen);
    
    return 0;
}