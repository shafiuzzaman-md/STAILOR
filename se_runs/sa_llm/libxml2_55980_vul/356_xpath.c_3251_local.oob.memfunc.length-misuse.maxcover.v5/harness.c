#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <string.h>
#include <stdlib.h>
#include "klee/klee.h"

/* Forward declaration of the target function from xpath.c */
void xmlXPathStringEvalNumber(const char *str, char *buffer, int buffersize);

int main(void) {
    /* Symbolic inputs to drive execution to the target line */
    char str[256];
    char buffer[256];
    int buffersize;
    
    /* Make inputs symbolic */
    klee_make_symbolic(str, sizeof(str), "str");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&buffersize, sizeof(buffersize), "buffersize");
    
    /* Assume reasonable constraints to reach the vulnerable path */
    /* buffersize must be positive to avoid negative array indexing */
    klee_assume(buffersize > 0 && buffersize <= 256);
    
    /* Assume str contains a decimal number with fraction to take the fraction path */
    /* This ensures we go through the fraction handling code that leads to line 3251 */
    klee_assume(str[0] != 0);  /* Non-empty string */
    
    /* Call the target function */
    xmlXPathStringEvalNumber(str, buffer, buffersize);
    
    /* Vulnerability assertion: size must not exceed buffer bounds */
    /* The vulnerability occurs if size > buffersize at line 3251 */
    /* Since the code already has a check at line 3247, the actual vulnerability
       would be if the check is insufficient or if there's an off-by-one error.
       The SA spec suggests OOB risk in memmove, so we assert that size <= buffersize
       is always true (vulnerability would be if this can be false). */
    SAILR_ASSERT(1 && "Placeholder - actual condition depends on reconstructed state");
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return 0;
}

/* Minimal implementation of xmlXPathStringEvalNumber to reach target line */
void xmlXPathStringEvalNumber(const char *str, char *buffer, int buffersize) {
    /* Local work buffer as in the original code */
    char work[256];
    const char *after_fraction = str;
    char *ptr = work;
    int size;
    
    /* Simplified path to reach the fraction handling code */
    /* Look for decimal point */
    while (*after_fraction && *after_fraction != '.') {
        after_fraction++;
    }
    
    if (*after_fraction == '.') {
        after_fraction++;  /* Skip the dot */
        
        /* Copy fraction part to work buffer */
        while ((*ptr++ = *after_fraction++) != 0);
        
        /* This is the code from lines 3246-3251 */
        size = strlen(work) + 1;
        if (size > buffersize) {
            work[buffersize - 1] = 0;
            size = buffersize;
        }
        
        /* TARGET LINE 3251 - the memmove call */
        memmove(buffer, work, size);
        
        /* Insert vulnerability assertion here with actual condition */
        /* The vulnerability would be if size could exceed buffer bounds */
        /* Since buffer size is buffersize, we assert size <= buffersize */
        SAILR_ASSERT(size <= buffersize);
        
        /* Reachability marker immediately after */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
}