#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

#define CHUNK 4096

int main(void) {
    char buffer[CHUNK];
    char filling[CHUNK];
    int len;
    int curlen = 0;
    int maxlen;
    int instate = 1;
    char crazy[CHUNK];
    int crazy_indx = 0;
    int rlen;
    char* current;

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&maxlen, sizeof(maxlen), "maxlen");
    klee_make_symbolic(filling, sizeof(filling), "filling");
    klee_make_symbolic(crazy, sizeof(crazy), "crazy");

    klee_assume(len >= 0);
    klee_assume(maxlen >= 0);
    klee_assume(maxlen <= CHUNK * 2);

    if (instate == 1) {
        if (len > CHUNK) len = CHUNK;
        
        SAILR_ASSERT(len <= CHUNK);
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