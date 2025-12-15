#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <klee/klee.h>
#include <stdlib.h>
#include <string.h>

#define MAX_NODES 1000

char *finish = "\n";
int curseg = 0;
char *current = NULL;
int rlen = 0;
int len = 0;

int target_function(char *buffer) {
    if (len >= rlen) {
        if (curseg >= MAX_NODES + 1) {
            rlen = 0;
            return 0;
        }
        len = rlen;
        rlen = 0;
        
        SAILR_ASSERT(len <= 1024);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        memcpy(buffer, current, len);
        curseg++;
        if (curseg == MAX_NODES) {
            rlen = strlen(finish);
            current = finish;
        } else {
            if (curseg % (MAX_NODES / 10) == 0) {
                // fprintf(stderr, ".");
            }
        }
    }
    return 1;
}

int main(void) {
    char buffer[1024];
    
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&rlen, sizeof(rlen), "rlen");
    klee_make_symbolic(&curseg, sizeof(curseg), "curseg");
    
    current = malloc(1024);
    klee_assume(current != NULL);
    klee_make_symbolic(current, 1024, "current");
    
    klee_assume(len >= 0);
    klee_assume(rlen >= 0);
    klee_assume(curseg >= 0);
    klee_assume(curseg < MAX_NODES + 1);
    klee_assume(len >= rlen);
    klee_assume(curseg < MAX_NODES + 1);
    
    target_function(buffer);
    
    free(current);
    return 0;
}