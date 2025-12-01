#include <klee/klee.h>
#include "runtest.c"

int main() {
    char filename[500];
    
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_assume(filename[0] != '\0');
    
    int options = 0;
    
    patternTest(filename, NULL, NULL, options);
    
    return 0;
}