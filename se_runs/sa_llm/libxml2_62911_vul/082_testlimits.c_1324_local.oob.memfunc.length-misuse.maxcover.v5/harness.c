#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    char filename[256];
    unsigned long limit;
    unsigned int crazy_indx;
    int ret = 1;
    int fail = 0;
    int res = 1;
    
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(&limit, sizeof(limit), "limit");
    klee_make_symbolic(&crazy_indx, sizeof(crazy_indx), "crazy_indx");
    klee_make_symbolic(&fail, sizeof(fail), "fail");
    
    klee_assume(filename[255] == '\0');
    
    if (ret != 0) {
        if (fail) {
            res = 0;
        } else {
            if (strncmp(filename, "crazy:", 6) == 0) {
                SAILR_ASSERT(strlen(filename) >= 6);
                klee_assert(0 && "SAILR_REACH_ASSERT");
                fprintf(stderr, "Failed to parse '%s' %u\n",
                        filename, crazy_indx);
            } else {
                SAILR_ASSERT(strlen(filename) >= 6);
                klee_assert(0 && "SAILR_REACH_ASSERT");
                fprintf(stderr, "Failed to parse '%s' %lu\n",
                        filename, (unsigned long) limit);
            }
        }
    }
    
    return 0;
}