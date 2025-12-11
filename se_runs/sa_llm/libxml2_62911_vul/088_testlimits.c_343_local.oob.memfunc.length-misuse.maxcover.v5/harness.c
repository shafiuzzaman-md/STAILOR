#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include "klee/klee.h"
#include <stdlib.h>
#include <string.h>

typedef enum {
    STATE_0,
    STATE_1,
    STATE_2,
    STATE_3
} state_t;

int main(void) {
    unsigned int len, rlen, curlen;
    state_t instate;
    char *buffer;
    char *current;
    unsigned int buffer_size;

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&rlen, sizeof(rlen), "rlen");
    klee_make_symbolic(&curlen, sizeof(curlen), "curlen");
    klee_make_symbolic(&instate, sizeof(instate), "instate");
    klee_make_symbolic(&buffer_size, sizeof(buffer_size), "buffer_size");

    klee_assume(len >= 0);
    klee_assume(rlen >= 0);
    klee_assume(curlen >= 0);
    klee_assume(instate >= STATE_0 && instate <= STATE_3);
    klee_assume(buffer_size >= 1 && buffer_size <= 1024);

    buffer = (char*)malloc(buffer_size);
    current = (char*)malloc(1024);

    klee_make_symbolic(buffer, buffer_size, "buffer");
    klee_make_symbolic(current, 1024, "current");

    if (instate == 2) {
        if (len >= rlen) {
            len = rlen;
            rlen = 0;
            memcpy(buffer, current, len);
            instate = 3;
            curlen = 0;
        } else {
            memcpy(buffer, current, len);
            rlen -= len;
            SAILR_ASSERT(len <= buffer_size);
            klee_assert(0 && "SAILR_REACH_ASSERT");
        }
    }

    free(buffer);
    free(current);
    return 0;
}