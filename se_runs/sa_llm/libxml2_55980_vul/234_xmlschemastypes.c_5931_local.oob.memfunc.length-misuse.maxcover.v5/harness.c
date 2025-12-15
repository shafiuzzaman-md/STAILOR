#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <string.h>
#include <stdlib.h>
#include "klee/klee.h"

typedef struct {
    unsigned int total;
} dec_struct;

int main(void) {
    unsigned int bufsize;
    char *buf;
    char *offs;
    unsigned int i;
    dec_struct dec;
    
    klee_make_symbolic(&bufsize, sizeof(bufsize), "bufsize");
    klee_make_symbolic(&dec.total, sizeof(dec.total), "dec_total");
    
    klee_assume(bufsize > 0 && bufsize <= 1024);
    klee_assume(dec.total > 0 && dec.total <= bufsize);
    
    buf = (char *)malloc(bufsize);
    klee_assume(buf != NULL);
    
    klee_make_symbolic(buf, bufsize, "buf");
    
    offs = buf + (bufsize / 2);
    klee_assume(offs >= buf && offs < buf + bufsize);
    
    i = 0;
    unsigned int max_i = (buf + bufsize) - offs - 1;
    klee_assume(max_i > 0);
    
    while (*(offs + i) != 0) {
        klee_assume(i < max_i);
        i++;
    }
    
    if (i < dec.total) {
        unsigned int move_dest_offset = dec.total - i;
        unsigned int move_size = i + 1;
        
        SAILR_ASSERT(offs + move_dest_offset + move_size <= buf + bufsize);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        memmove(offs + move_dest_offset, offs, move_size);
        memset(offs, '0', move_dest_offset);
    }
    
    free(buf);
    return 0;
}