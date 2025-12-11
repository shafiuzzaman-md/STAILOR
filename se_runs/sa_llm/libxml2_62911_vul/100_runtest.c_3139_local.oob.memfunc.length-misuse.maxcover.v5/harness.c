#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

#define STR_SIZE 1024

int main(void) {
    FILE *f;
    char str[STR_SIZE];
    int in;
    
    klee_make_symbolic(&in, sizeof(in), "in");
    klee_assume(in >= 0);
    klee_assume(in < STR_SIZE);
    
    f = fopen("test_input.txt", "r");
    if (f == NULL) {
        return 1;
    }
    
    while (1) {
        if (fgets(&str[0], in, f) == NULL) {
            break;
        }
        
        SAILR_ASSERT(in <= STR_SIZE);
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    fclose(f);
    return 0;
}