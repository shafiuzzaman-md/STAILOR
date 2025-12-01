#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables
    crazy_indx = 0;
    rlen = 0;
    current = NULL;
    instate = 0;
    curlen = 0;
    
    // Make buffer symbolic
    char buffer[1024];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    // Make context symbolic (simulate void* context)
    void* context;
    klee_make_symbolic(&context, sizeof(context), "context");
    
    // Make len symbolic with reasonable bounds
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len <= 1024);
    
    // Initialize global 'crazy' string
    strcpy(crazy, "test_string");
    
    // Call the suspicious function
    int result = crazyRead(context, buffer, len);
    
    // Add assertion near the suspicious line (343)
    // Check if we're in instate == 2 and len >= rlen
    if (instate == 2 && len >= rlen && rlen > 0) {
        // Assert that current + len doesn't exceed crazy buffer bounds
        klee_assert(current + len <= crazy + strlen(crazy));
    }
    
    return 0;
}