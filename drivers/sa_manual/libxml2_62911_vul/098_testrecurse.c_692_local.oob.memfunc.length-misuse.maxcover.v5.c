#include <klee/klee.h>
#include "testrecurse.c"

int main() {
    char suffix[500];
    char suffixbuff[500];
    
    klee_make_symbolic(suffix, sizeof(suffix), "suffix");
    
    strncpy(suffixbuff, suffix, 499);
    
    klee_assert(suffixbuff[499] == 0);
    
    return 0;
}