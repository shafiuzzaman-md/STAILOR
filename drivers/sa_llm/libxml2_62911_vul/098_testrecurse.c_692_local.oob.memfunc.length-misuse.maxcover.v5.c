#include <klee/klee.h>
#include "testrecurse.c"

int main() {
    char suffix[500];
    klee_make_symbolic(suffix, sizeof(suffix), "suffix");
    
    char suffixbuff[500];
    strncpy(suffixbuff, suffix, 499);
    
    klee_assert(strlen(suffix) < 500);
    
    return 0;
}