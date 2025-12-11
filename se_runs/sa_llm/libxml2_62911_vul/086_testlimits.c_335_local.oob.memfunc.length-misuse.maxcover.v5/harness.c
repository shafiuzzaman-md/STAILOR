#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include "klee/klee.h"
#include <stdlib.h>
#include <string.h>

typedef struct {
    char *buffer;
    char *current;
    int rlen;
    int curlen;
    int instate;
} State;

int main(void) {
    State s;
    int len;

    s.buffer = malloc(1024);
    s.current = malloc(1024);
    klee_assume(s.buffer != NULL);
    klee_assume(s.current != NULL);

    klee_make_symbolic(&s.rlen, sizeof(s.rlen), "rlen");
    klee_make_symbolic(&s.curlen, sizeof(s.curlen), "curlen");
    klee_make_symbolic(&s.instate, sizeof(s.instate), "instate");
    klee_make_symbolic(&len, sizeof(len), "len");

    klee_assume(s.rlen >= 0);
    klee_assume(s.curlen >= 0);
    klee_assume(len >= 0);
    klee_assume(s.instate == 2);

    if (len >= s.rlen) {
        SAILR_ASSERT(len <= 1024);
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    free(s.buffer);
    free(s.current);
    return 0;
}