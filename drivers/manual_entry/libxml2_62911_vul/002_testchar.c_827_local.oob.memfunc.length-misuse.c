#include <klee/klee.h>
#include "testchar.c"

int main() {
    char input_buffer[1024];
    klee_make_symbolic(input_buffer, sizeof(input_buffer), "input_buffer");
    
    testChar(input_buffer);
    
    return 0;
}