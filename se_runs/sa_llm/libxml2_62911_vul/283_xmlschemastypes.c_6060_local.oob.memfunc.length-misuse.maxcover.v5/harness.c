#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

typedef struct {
    int total;
} dec_struct;

int main(void) {
    char *offs;
    int i;
    dec_struct dec;
    
    offs = (char *)malloc(256);
    if (!offs) return 0;
    
    klee_make_symbolic(&i, sizeof(i), "i");
    klee_make_symbolic(&dec.total, sizeof(dec.total), "dec_total");
    klee_make_symbolic(offs, 256, "offs");
    
    klee_assume(i >= 0);
    klee_assume(dec.total >= 0);
    klee_assume(dec.total <= 256);
    
    while (*(offs + i) != 0) {
        i++;
        klee_assume(i < 256);
    }
    
    if (i < dec.total) {
        SAILR_ASSERT(dec.total - i <= 256 && i + 1 <= 256);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memmove(offs + (dec.total - i), offs, i + 1);
        memset(offs, '0', dec.total - i);
    }
    
    free(offs);
    return 0;
}