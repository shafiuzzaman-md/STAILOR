#include <klee/klee.h>
#include "testchar.c"

int main() {
    char buffer[1024];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    int result = testChar(buffer);
    
    return 0;
}