#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include "klee/klee.h"
#include <string.h>

#define CHUNK 4096

int main(void) {
    char buffer[CHUNK];
    char *current;
    int instate;
    int curlen;
    int rlen;
    int len;

    klee_make_symbolic(&instate, sizeof(instate), "instate");
    klee_make_symbolic(&curlen, sizeof(curlen), "curlen");
    klee_make_symbolic(&rlen, sizeof(rlen), "rlen");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    current = buffer;

    klee_assume(instate == 1);
    klee_assume(len >= 0);
    klee_assume(curlen >= 0);
    klee_assume(rlen >= 0);

    if (instate == 1) {
        if (len > CHUNK) len = CHUNK;
        SAILR_ASSERT(len <= CHUNK);
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    return 0;
}