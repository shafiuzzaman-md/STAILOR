#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include <klee/klee.h>

#define MAX_BASE_LEN 1000
#define MAX_PREFIX_LEN 1000

int main(void) {
    char base[MAX_BASE_LEN];
    char prefix[MAX_PREFIX_LEN];
    char pattern[500];
    int len;
    
    klee_make_symbolic(base, sizeof(base), "base");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    klee_assume(len >= 0);
    klee_assume(len < MAX_BASE_LEN);
    klee_assume(base[len - 1] == 0);
    
    if (len > 0 && base[len - 1] == 't') {
        len -= 2;
    }
    
    if (len > 0 && base[len - 2] == '_') {
        len -= 2;
    }
    
    SAILR_ASSERT(len < MAX_PREFIX_LEN);
    
    memcpy(prefix, base, len);
    prefix[len] = 0;
    
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return 0;
}