#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

typedef struct {
    char *buffer;
    char *current;
    int instate;
    int curlen;
    int len;
    int rlen;
} xmlParserInputBuffer;

int main(void) {
    xmlParserInputBuffer buf;
    
    buf.buffer = malloc(1024);
    buf.current = malloc(1024);
    
    klee_make_symbolic(&buf.instate, sizeof(buf.instate), "instate");
    klee_make_symbolic(&buf.curlen, sizeof(buf.curlen), "curlen");
    klee_make_symbolic(&buf.len, sizeof(buf.len), "len");
    klee_make_symbolic(&buf.rlen, sizeof(buf.rlen), "rlen");
    
    klee_assume(buf.len >= 0);
    klee_assume(buf.rlen >= 0);
    klee_assume(buf.curlen >= 0);
    
    klee_assume(buf.instate == 0);
    klee_assume(buf.len < buf.rlen);
    
    if (buf.instate == 0) {
        if (buf.len >= buf.rlen) {
            buf.len = buf.rlen;
            buf.rlen = 0;
            memcpy(buf.buffer, buf.current, buf.len);
            buf.instate = 1;
            buf.curlen = 0;
        } else {
            memcpy(buf.buffer, buf.current, buf.len);
            SAILR_ASSERT(buf.len <= 1024);
            klee_assert(0 && "SAILR_REACH_ASSERT");
            buf.rlen -= buf.len;
        }
    }
    
    free(buf.buffer);
    free(buf.current);
    return 0;
}