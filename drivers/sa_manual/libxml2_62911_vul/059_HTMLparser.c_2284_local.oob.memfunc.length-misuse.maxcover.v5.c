#include <klee/klee.h>
#include "HTMLparser.h"

int main() {
    unsigned char out_buf[1024];
    unsigned char in_buf[1024];
    int outlen = 1024;
    int inlen;
    int quoteChar = '"';

    klee_make_symbolic(&inlen, sizeof(inlen), "inlen");
    klee_make_symbolic(in_buf, sizeof(in_buf), "in_buf");
    
    klee_assume(inlen >= 0);
    klee_assume(inlen <= 1024);

    int result = htmlEncodeEntities(out_buf, &outlen, in_buf, &inlen, quoteChar);
    
    return 0;
}