#include <klee/klee.h>
#include "runtest.c"

int main() {
    char base[500];
    klee_make_symbolic(base, sizeof(base), "base");
    
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    char prefix[500];
    
    // Initialize base string with symbolic content but ensure it's null-terminated
    base[499] = '\0';
    
    // Constrain len to be within reasonable bounds for the vulnerable code path
    klee_assume(len >= 0 && len < 500);
    
    // Simulate the vulnerable code path
    if (len > 499 || len < 5) {
        return -1;
    }
    len -= 4; /* remove trailing .xsd */
    if (base[len - 2] == '_') {
        len -= 2; /* remove subtest number */
    }
    if (base[len - 2] == '_') {
        len -= 2; /* remove subtest number */
    }
    
    // Vulnerable memcpy - add assertion to check for buffer overflow
    klee_assert(len < 500 && len >= 0);
    memcpy(prefix, base, len);
    prefix[len] = 0;
    
    return 0;
}