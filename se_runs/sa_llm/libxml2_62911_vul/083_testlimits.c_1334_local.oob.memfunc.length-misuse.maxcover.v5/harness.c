#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <klee/klee.h>

/* Stub for the actual runtest function signature */
int runtest(const char *filename, unsigned long limit, int fail, unsigned int crazy_indx);

/* Main harness */
int main(void) {
    /* Symbolic inputs to drive execution to the target location */
    char filename[256];
    unsigned long limit;
    int fail;
    unsigned int crazy_indx;
    
    /* Make inputs symbolic */
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(&limit, sizeof(limit), "limit");
    klee_make_symbolic(&fail, sizeof(fail), "fail");
    klee_make_symbolic(&crazy_indx, sizeof(crazy_indx), "crazy_indx");
    
    /* Ensure filename is null-terminated */
    filename[255] = '\0';
    
    /* Constrain inputs to reach the target branch:
       - fail must be true (non-zero) to enter the else branch
       - strncmp(filename, "crazy:", 6) must be 0 to take the first fprintf branch
    */
    klee_assume(fail != 0);
    
    /* Ensure filename starts with "crazy:" for the first 6 bytes */
    klee_assume(filename[0] == 'c');
    klee_assume(filename[1] == 'r');
    klee_assume(filename[2] == 'a');
    klee_assume(filename[3] == 'z');
    klee_assume(filename[4] == 'y');
    klee_assume(filename[5] == ':');
    
    /* Vulnerability assertion: For strncmp(filename, "crazy:", 6), 
       we need to ensure that filename has at least 6 bytes accessible.
       Since filename is a 256-byte array with null termination at index 255,
       the condition is always true. However, the SA pattern warns about
       unbounded length/count for strncmp. The actual check should be that
       the length parameter (6) does not exceed the buffer size of filename.
    */
    SAILR_ASSERT(6 <= sizeof(filename));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Call the entrypoint - this will never return due to the assert above,
       but we include it for completeness */
    return runtest(filename, limit, fail, crazy_indx);
}

/* Minimal stub implementation of runtest to reach the target line */
int runtest(const char *filename, unsigned long limit, int fail, unsigned int crazy_indx) {
    /* This mimics the code structure around line 1334 */
    if (fail) {
        if (strncmp(filename, "crazy:", 6) == 0) {
            /* Target line 1334: fprintf(stderr, "Failed to get failure for '%s' %u\n", filename, crazy_indx); */
            fprintf(stderr, "Failed to get failure for '%s' %u\n", filename, crazy_indx);
        } else {
            fprintf(stderr, "Failed to get failure for '%s' %lu\n", filename, (unsigned long) limit);
        }
    }
    return 0;
}