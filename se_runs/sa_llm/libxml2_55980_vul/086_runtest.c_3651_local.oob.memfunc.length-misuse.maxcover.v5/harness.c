#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <string.h>
#include <stdlib.h>
#include <glob.h>
#include "klee/klee.h"

/* Stub for xmlRelaxNGFree to avoid linking issues */
void xmlRelaxNGFree(void* schemas) {
    /* Do nothing */
}

/* Function prototype from runtest.c that we need to call */
int testRelaxNG(const char *filename);

/* Main harness */
int main(void) {
    /* Symbolic base string that will be passed to testRelaxNG */
    char base[512];
    klee_make_symbolic(base, sizeof(base), "base");
    
    /* Ensure base is null-terminated */
    base[511] = '\0';
    
    /* Compute length as done in the target code */
    size_t len = strlen(base);
    
    /* Constrain len to be >= 5 and <= 499 to pass the initial check */
    klee_assume(len >= 5 && len <= 499);
    
    /* Ensure base ends with ".rng" as expected by the code */
    if (len >= 4) {
        klee_assume(base[len-4] == '.');
        klee_assume(base[len-3] == 'r');
        klee_assume(base[len-2] == 'n');
        klee_assume(base[len-1] == 'g');
    }
    
    /* Call the function that leads to the target line */
    testRelaxNG(base);
    
    /* The vulnerability assertion: check that len-4 doesn't exceed prefix buffer size */
    /* prefix is declared as char prefix[500] in the actual code */
    /* We need to assert that (len - 4) <= sizeof(prefix) */
    SAILR_ASSERT((len - 4) <= 500);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return 0;
}

/* Implementation of testRelaxNG that mimics the relevant code from runtest.c */
int testRelaxNG(const char *filename) {
    const char *base = filename;
    size_t len;
    char prefix[500];
    char pattern[500];
    glob_t globbuf;
    int i;
    void *schemas = NULL; /* Dummy schemas pointer */
    
    /* Code from lines 3645-3651 */
    len = strlen(base);
    if ((len > 499) || (len < 5)) {
        xmlRelaxNGFree(schemas);
        return -1;
    }
    len -= 4; /* remove trailing .rng */
    
    /* TARGET LINE 3651: memcpy(prefix, base, len); */
    memcpy(prefix, base, len);
    prefix[len] = 0;
    
    /* Rest of the function (simplified) */
    if (snprintf(pattern, 499, "./test/relaxng/%s_?.xml", prefix) >= 499)
        pattern[499] = 0;
    
    globbuf.gl_offs = 0;
    glob(pattern, GLOB_DOOFFS, NULL, &globbuf);
    for (i = 0; i < globbuf.gl_pathc; i++) {
        /* Do nothing in stub */
    }
    
    return 0;
}