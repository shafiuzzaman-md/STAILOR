#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables used by crazyRead
    crazy_indx = 0;
    rlen = 0;
    current = NULL;
    instate = 0;
    curlen = 0;
    
    // Make symbolic inputs for crazyRead parameters
    char context_buffer[1024];
    char buffer[1024];
    int len;
    
    klee_make_symbolic(context_buffer, sizeof(context_buffer), "context_buffer");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Initialize global 'crazy' string
    strcpy(crazy, "test_crazy_string");
    
    // Call the suspicious function
    int result = crazyRead(context_buffer, buffer, len);
    
    // Add assertion near the suspicious line to check for potential OOB
    // Line 335: memcpy(buffer, current, len);
    // Check if len could exceed buffer bounds
    klee_assert(len <= 1024);
    
    return 0;
}