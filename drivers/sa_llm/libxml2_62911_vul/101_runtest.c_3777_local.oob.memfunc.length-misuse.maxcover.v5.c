#include <klee/klee.h>
#include "runtest.c"

int main() {
    char base[500];
    char prefix[500];
    int len;
    
    klee_make_symbolic(base, sizeof(base), "base");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Ensure base is null-terminated
    base[499] = '\0';
    
    // Constrain len to be within reasonable bounds for the vulnerability
    klee_assume(len >= 0);
    klee_assume(len <= 499);
    
    // This is the suspicious line - check for buffer overflow
    if (len > 0) {
        klee_assert(len < 500);  // Check that we don't copy more than prefix can hold
        memcpy(prefix, base, len);
        prefix[len] = 0;
    }
    
    return 0;
}