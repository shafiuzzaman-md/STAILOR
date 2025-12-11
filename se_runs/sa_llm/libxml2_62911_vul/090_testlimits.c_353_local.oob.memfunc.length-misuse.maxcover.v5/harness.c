#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

#define CHUNK 1024

int main(void) {
    int instate;
    int len;
    int curlen;
    int maxlen;
    int rlen;
    int crazy_indx;
    char buffer[CHUNK];
    char filling[CHUNK];
    char crazy[CHUNK * 2];
    
    klee_make_symbolic(&instate, sizeof(instate), "instate");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&curlen, sizeof(curlen), "curlen");
    klee_make_symbolic(&maxlen, sizeof(maxlen), "maxlen");
    klee_make_symbolic(&rlen, sizeof(rlen), "rlen");
    klee_make_symbolic(&crazy_indx, sizeof(crazy_indx), "crazy_indx");
    klee_make_symbolic(filling, sizeof(filling), "filling");
    klee_make_symbolic(crazy, sizeof(crazy), "crazy");
    
    klee_assume(instate == 1);
    klee_assume(len >= 0);
    klee_assume(curlen >= 0);
    klee_assume(maxlen >= 0);
    klee_assume(rlen >= 0);
    klee_assume(crazy_indx >= 0);
    klee_assume(crazy_indx < sizeof(crazy));
    
    if (instate == 1) {
        if (len > CHUNK) len = CHUNK;
        
        SAILR_ASSERT(len <= sizeof(buffer) && len <= sizeof(filling));
        
        memcpy(buffer, &filling[0], len);
        curlen += len;
        
        if (curlen >= maxlen) {
            rlen = strlen(crazy) - crazy_indx;
            current = &crazy[crazy_indx];
            instate = 2;
            
            klee_assert(0 && "SAILR_REACH_ASSERT");
        }
    }
    
    return 0;
}