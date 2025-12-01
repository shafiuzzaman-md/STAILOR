#include <klee/klee.h>
#include "xzlib.h"

int main() {
    xz_statep state;
    unsigned char *next;
    unsigned char *buf;
    unsigned int len;
    unsigned int have;

    klee_make_symbolic(&state, sizeof(state), "state");
    klee_make_symbolic(&next, sizeof(next), "next");
    klee_make_symbolic(&buf, sizeof(buf), "buf");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&have, sizeof(have), "have");

    int result = xz_decomp(state, next, buf, len, have);
    
    klee_assert(have <= len);
    
    return result;
}