#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables used by crazyRead
    crazy_indx = 0;
    rlen = 0;
    instate = 0;
    curlen = 0;
    maxlen = 1024;  // Reasonable default
    
    // Make symbolic inputs for crazyRead parameters
    char context_buffer[64];
    klee_make_symbolic(context_buffer, sizeof(context_buffer), "context_buffer");
    
    char buffer[128];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Initialize filling array with symbolic data
    char filling[1024];
    klee_make_symbolic(filling, sizeof(filling), "filling");
    
    // Call the suspicious function
    int result = crazyRead((void*)context_buffer, buffer, len);
    
    return 0;
}