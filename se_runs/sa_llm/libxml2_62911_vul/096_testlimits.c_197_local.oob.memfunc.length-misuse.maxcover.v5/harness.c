#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    unsigned int instate;
    unsigned int len;
    unsigned int rlen;
    unsigned int curlen;
    char* buffer;
    char* current;
    
    klee_make_symbolic(&instate, sizeof(instate), "instate");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&rlen, sizeof(rlen), "rlen");
    klee_make_symbolic(&curlen, sizeof(curlen), "curlen");
    
    buffer = malloc(1024);
    current = malloc(1024);
    
    klee_assume(instate == 2);
    klee_assume(len < rlen);
    klee_assume(len >= 0);
    klee_assume(rlen >= 0);
    klee_assume(curlen >= 0);
    
    if (instate == 2) {
        if (len >= rlen) {
            len = rlen;
            rlen = 0;
            memcpy(buffer, current, len);
            instate = 3;
            curlen = 0;
        } else {
            SAILR_ASSERT(len <= 1024);
            klee_assert(0 && "SAILR_REACH_ASSERT");
            memcpy(buffer, current, len);
            rlen -= len;
        }
    }
    
    free(buffer);
    free(current);
    return 0;
}