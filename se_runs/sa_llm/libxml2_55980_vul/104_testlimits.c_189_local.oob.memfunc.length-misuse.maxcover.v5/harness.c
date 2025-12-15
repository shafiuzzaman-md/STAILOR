#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from testlimits.c */
int xmlFuzzReadInt(void);
int xmlFuzzReadRemaining(void);
char* xmlFuzzReadString(int len);

/* Stub for xmlFuzzDataConsistencyCheck - returns 0 to indicate success */
int xmlFuzzDataConsistencyCheck(void) {
    return 0;
}

/* Target function from testlimits.c - simplified version to reach line 189 */
int testlimits(int context, char* buffer, int len, int instate, int rlen, char* current, int maxlen) {
    if ((context == 0) || (buffer == NULL) || (len < 0))
        return (-1);

    if (instate == 0) {
        if (len >= rlen) {
            len = rlen;
            rlen = 0;
            /* TARGET LINE 189 - vulnerable memcpy */
            memcpy(buffer, current, len);
            /* Vulnerability assertion: ensure len doesn't exceed buffer bounds */
            SAILR_ASSERT(len <= 100);  /* Assuming buffer size is 100 */
            /* Reachability marker */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            instate = 1;
            /* curlen and dotlen not used further */
        } else {
            memcpy(buffer, current, len);
            rlen -= len;
            current += len;
        }
    }
    return 0;
}

int main(void) {
    /* Symbolic variables to control execution path */
    int context, len, instate, rlen, maxlen;
    char* buffer;
    char* current;
    
    /* Allocate fixed-size buffers */
    buffer = malloc(100);  /* Assume buffer size is 100 bytes */
    current = malloc(200); /* Source buffer larger than destination */
    
    /* Make inputs symbolic */
    klee_make_symbolic(&context, sizeof(context), "context");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&instate, sizeof(instate), "instate");
    klee_make_symbolic(&rlen, sizeof(rlen), "rlen");
    klee_make_symbolic(&maxlen, sizeof(maxlen), "maxlen");
    
    /* Assume conditions to reach the target path */
    klee_assume(context != 0);           /* context not NULL (non-zero) */
    klee_assume(len >= 0);               /* len >= 0 to pass first check */
    klee_assume(instate == 0);           /* instate == 0 to enter the if block */
    klee_assume(len >= rlen);            /* len >= rlen to take the first branch */
    klee_assume(rlen >= 0);              /* rlen non-negative */
    klee_assume(rlen <= 200);            /* rlen within source buffer bounds */
    
    /* Call the target function */
    testlimits(context, buffer, len, instate, rlen, current, maxlen);
    
    /* Cleanup */
    free(buffer);
    free(current);
    
    return 0;
}