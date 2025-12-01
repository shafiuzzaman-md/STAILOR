#include <klee/klee.h>
#include "runtest.c"

int main() {
    char base[500];
    klee_make_symbolic(base, sizeof(base), "base");
    klee_assume(base[0] != '\0');
    
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    char prefix[500];
    
    schemasTest("test.xsd", NULL, NULL, 0);
    
    return 0;
}