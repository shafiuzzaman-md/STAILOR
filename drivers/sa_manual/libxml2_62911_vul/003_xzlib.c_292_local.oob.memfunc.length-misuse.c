#include <klee/klee.h>
#include "xzlib.h"

int main() {
    xz_statep state;
    unsigned char *next;
    unsigned char *buf;
    unsigned int len;
    unsigned int have;
    unsigned char *out;
    unsigned int out_len;

    klee_make_symbolic(&state, sizeof(state), "state");
    klee_make_symbolic(&next, sizeof(next), "next");
    klee_make_symbolic(&buf, sizeof(buf), "buf");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&have, sizeof(have), "have");
    klee_make_symbolic(&out, sizeof(out), "out");
    klee_make_symbolic(&out_len, sizeof(out_len), "out_len");

    int result = xz_decomp(state, next, buf, len, have, out, out_len);
    
    klee_assert(have <= out_len);

    return 0;
}