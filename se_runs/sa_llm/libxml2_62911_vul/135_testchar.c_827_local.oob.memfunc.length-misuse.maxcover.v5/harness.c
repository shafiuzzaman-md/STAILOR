#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include "klee/klee.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int testDocumentRanges(void);

int main(void) {
    int ret = testDocumentRanges();
    
    if (ret != 0) {
        char out[10000];
        klee_make_symbolic(out, sizeof(out), "out");
        
        int i;
        for (i = 25; i < 25 + 1001 * 7; i += 7) {
            klee_assume(i + 7 <= sizeof(out));
            if (memcmp(out + i, "&#x3B1;", 7) != 0) {
                SAILR_ASSERT(i + 7 <= sizeof(out));
                klee_assert(0 && "SAILR_REACH_ASSERT");
                return ret;
            }
        }
    }
    
    return 0;
}

int testDocumentRanges(void) {
    int ret = 0;
    char out[10000];
    
    klee_make_symbolic(out, sizeof(out), "test_out");
    
    for (int i = 25; i < 25 + 1001 * 7; i += 7) {
        klee_assume(i + 7 <= sizeof(out));
        if (memcmp(out + i, "&#x3B1;", 7) != 0) {
            ret += 1;
            break;
        }
    }
    
    return ret;
}