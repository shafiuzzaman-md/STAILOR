#include <klee/klee.h>
#include "runtest.c"

int main() {
    char filename[500];
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_assume(filename[499] == '\0');
    
    int options;
    klee_make_symbolic(&options, sizeof(options), "options");
    
    patternTest(filename, NULL, NULL, options);
    return 0;
}