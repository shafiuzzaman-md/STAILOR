#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables used in the code
    crazy_indx = 0;
    rlen = 0;
    instate = 0;
    curlen = 0;
    
    // Make global arrays symbolic
    char crazy_buffer[1024];
    klee_make_symbolic(crazy_buffer, sizeof(crazy_buffer), "crazy_buffer");
    crazy = crazy_buffer;
    
    char filling_buffer[1024];
    klee_make_symbolic(filling_buffer, sizeof(filling_buffer), "filling_buffer");
    filling = filling_buffer;
    
    // Symbolic inputs for crazyRead function
    void* context;
    char buffer[1024];
    int len;
    
    klee_make_symbolic(&context, sizeof(context), "context");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Call the suspicious function
    crazyRead(context, buffer, len);
    
    return 0;
}