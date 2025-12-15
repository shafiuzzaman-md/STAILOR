#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include "klee/klee.h"
#include <stdlib.h>
#include <string.h>

#define MAX_ARGS 100
#define MAX_ARG_LEN 1024

int main(void) {
    char arg[MAX_ARG_LEN];
    char *argv[MAX_ARGS];
    int i, nbargs;
    char *cur;
    
    klee_make_symbolic(arg, sizeof(arg), "arg");
    
    klee_assume(arg[MAX_ARG_LEN - 1] == '\0');
    
    i = 0;
    nbargs = 0;
    cur = arg;
    
    SAILR_ASSERT(sizeof(argv) >= MAX_ARGS * sizeof(char*));
    
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return 0;
}