#include <klee/klee.h>
#include "runtest.c"

int main() {
    char buffer[1024];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    int result = xmlRunTests(buffer);
    
    klee_assert(0);
    return 0;
}