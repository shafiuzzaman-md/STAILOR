#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables that might be used
    crazy_indx = 0;
    rlen = 0;
    current = NULL;
    instate = 0;
    curlen = 0;
    maxlen = 1024;  // Reasonable default
    
    // Create symbolic buffer for context and input data
    char context_buffer[1024];
    char buffer[1024];
    int len;
    
    // Make inputs symbolic
    klee_make_symbolic(context_buffer, sizeof(context_buffer), "context_buffer");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Call the suspicious function
    crazyRead((void*)context_buffer, buffer, len);
    
    return 0;
}