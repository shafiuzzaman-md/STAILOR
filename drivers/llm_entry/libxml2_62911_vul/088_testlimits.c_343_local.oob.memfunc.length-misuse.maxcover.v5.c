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
    CHUNK = 256;    // Reasonable default
    
    // Create symbolic buffer for crazy string
    char crazy_buffer[1024];
    klee_make_symbolic(crazy_buffer, sizeof(crazy_buffer), "crazy_buffer");
    crazy = crazy_buffer;
    
    // Create symbolic inputs for crazyRead parameters
    char context_buffer[256];
    klee_make_symbolic(context_buffer, sizeof(context_buffer), "context_buffer");
    void* context = (void*)context_buffer;
    
    char buffer[1024];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Call the suspicious function
    int result = crazyRead(context, buffer, len);
    
    return 0;
}