#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/xmlreader.h>
#include <klee/klee.h>

#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert(cond)
#endif

#define CHUNK 4096

int main(void) {
    char buffer[CHUNK];
    char filling[CHUNK];
    int curlen, maxlen, len, rlen, instate, crazy_indx;
    char *current;
    char crazy[CHUNK * 2];

    klee_make_symbolic(&curlen, sizeof(curlen), "curlen");
    klee_make_symbolic(&maxlen, sizeof(maxlen), "maxlen");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&rlen, sizeof(rlen), "rlen");
    klee_make_symbolic(&instate, sizeof(instate), "instate");
    klee_make_symbolic(&crazy_indx, sizeof(crazy_indx), "crazy_indx");
    klee_make_symbolic(filling, sizeof(filling), "filling");
    klee_make_symbolic(crazy, sizeof(crazy), "crazy");

    klee_assume(curlen >= 0);
    klee_assume(maxlen >= 0);
    klee_assume(len >= 0);
    klee_assume(rlen >= 0);
    klee_assume(crazy_indx >= 0);
    klee_assume(crazy_indx < sizeof(crazy));

    current = &crazy[crazy_indx];

    if (instate == 1) {
        if (len > CHUNK) len = CHUNK;
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memcpy(buffer, &filling[0], len);
        curlen += len;
        if (curlen >= maxlen) {
            rlen = strlen(crazy) - crazy_indx;
            current = &crazy[crazy_indx];
            instate = 2;
        }
    }

    return 0;
}