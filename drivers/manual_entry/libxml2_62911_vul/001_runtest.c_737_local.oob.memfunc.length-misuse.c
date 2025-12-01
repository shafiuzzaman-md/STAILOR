#include <klee/klee.h>
#include "runtest.c"

int main() {
    char input[1024];
    klee_make_symbolic(input, sizeof(input), "input");
    
    int result = runtest(input);
    
    return 0;
}