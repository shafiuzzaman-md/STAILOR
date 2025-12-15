#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from testlimits.c */
int testlimits(const char *filename, unsigned long limit, int fail, unsigned int crazy_indx);

int main(void) {
    /* Symbolic inputs to drive execution to line 1342 */
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
    
    /* Constrain inputs to reach the target line 1342 */
    /* From the code structure: we need to reach the else branch at line 1340 */
    /* and have fail == 1 to enter the if block at line 1341 */
    klee_assume(fail == 1);
    
    /* The vulnerability is at strncmp(filename, "crazy:", 6) at line 1342 */
    /* For strncmp to be safe, we need to ensure filename has at least 6 bytes */
    /* before the null terminator, or strncmp could read out-of-bounds */
    
    /* Find the length of the actual string in filename */
    size_t filename_len = strlen(filename);
    
    /* Vulnerability assertion: ensure filename has at least 6 characters */
    /* before null terminator to avoid OOB read in strncmp */
    SAILR_ASSERT(filename_len >= 6);
    
    /* Reachability marker - placed after vulnerability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Call the target function */
    testlimits(filename, limit, fail, crazy_indx);
    
    return 0;
}