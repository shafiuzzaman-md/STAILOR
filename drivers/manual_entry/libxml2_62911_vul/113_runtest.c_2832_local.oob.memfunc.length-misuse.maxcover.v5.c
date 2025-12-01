#include <klee/klee.h>
#include "runtest.c"

int main() {
    char filename[256];
    char result[256];
    
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(result, sizeof(result), "result");
    
    filename[255] = '\0';
    result[255] = '\0';
    
    xpathExprTest(filename, result, NULL, 0);
    
    return 0;
}