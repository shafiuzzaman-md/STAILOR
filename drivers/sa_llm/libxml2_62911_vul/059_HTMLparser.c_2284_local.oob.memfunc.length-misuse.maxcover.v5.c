#include <klee/klee.h>
#include "HTMLparser.h"

int main() {
    unsigned char out_buf[1024];
    int outlen = 1024;
    unsigned char in_buf[1024];
    int inlen;
    int quoteChar = 34;  // double quote

    // Make input buffer symbolic
    klee_make_symbolic(&inlen, sizeof(inlen), "inlen");
    klee_assume(inlen >= 0 && inlen <= 1024);
    klee_make_symbolic(in_buf, sizeof(in_buf), "in_buf");

    // Call the target function
    int result = htmlEncodeEntities(out_buf, &outlen, in_buf, &inlen, quoteChar);

    // Assertion for potential out-of-bounds in memcpy at line 2284
    // Check that we don't copy more data than available in output buffer
    if (result == 0) {
        // The function completed successfully, verify output bounds were respected
        klee_assert(outlen >= 0 && outlen <= 1024);
    }

    return 0;
}