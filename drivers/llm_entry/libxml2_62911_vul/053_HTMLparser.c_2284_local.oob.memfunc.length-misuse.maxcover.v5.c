#include <klee/klee.h>
#include "HTMLparser.h"

int main() {
    unsigned char out[1024];
    int outlen = 1024;
    unsigned char in[1024];
    int inlen;
    int quoteChar = '"';

    klee_make_symbolic(&inlen, sizeof(inlen), "inlen");
    klee_make_symbolic(in, sizeof(in), "in");

    htmlEncodeEntities(out, &outlen, in, &inlen, quoteChar);
    
    return 0;
}