#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from testrecurse.c */
char *segment = NULL;
char *current = NULL;
size_t rlen = 0;
size_t len = 0;
char buffer[1024];  /* Assume reasonable buffer size */

/* Stub for fprintf to avoid I/O issues */
int fprintf(void *stream, const char *format, ...) {
    return 0;
}

/* Simulate the relevant part of the function containing line 260 */
size_t simulate_target_function(void) {
    /* This simulates the else branch at line 259-263 */
    if (current != NULL && len > 0) {
        /* Line 260: memcpy(buffer, current, len); */
        /* Vulnerability assertion: len must not exceed buffer size */
        SAILR_ASSERT(len <= sizeof(buffer));
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        memcpy(buffer, current, len);
        rlen -= len;
        current += len;
    }
    return len;
}

int main(void) {
    /* Make key variables symbolic */
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&rlen, sizeof(rlen), "rlen");
    
    /* Allocate and initialize segment */
    segment = malloc(1024);
    klee_assume(segment != NULL);
    
    /* Make segment contents symbolic */
    klee_make_symbolic(segment, 1024, "segment");
    
    /* Initialize current to point to segment */
    current = segment;
    
    /* Constrain len to be reasonable but potentially dangerous */
    klee_assume(len > 0);
    klee_assume(len <= 2048);  /* Allow values larger than buffer */
    
    /* Constrain rlen to be at least len to enter the else branch */
    klee_assume(rlen >= len);
    
    /* Simulate the function call that reaches line 260 */
    simulate_target_function();
    
    /* Cleanup */
    free(segment);
    
    return 0;
}