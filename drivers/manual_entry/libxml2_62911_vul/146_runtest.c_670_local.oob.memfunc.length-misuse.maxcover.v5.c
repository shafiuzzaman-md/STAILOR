#include <klee/klee.h>
#include "runtest.c"

int main() {
    char r1[256];
    char r2[256];
    
    klee_make_symbolic(r1, sizeof(r1), "r1");
    klee_make_symbolic(r2, sizeof(r2), "r2");
    
    r1[255] = '\0';
    r2[255] = '\0';
    
    compareFiles(r1, r2);
    
    return 0;
}