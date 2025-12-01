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
    
    // Make len symbolic with reasonable bounds
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len <= 1024);
    
    // Make context symbolic (simulate valid context)
    void *context;
    klee_make_symbolic(&context, sizeof(context), "context");
    
    // Initialize crazy string
    strcpy(crazy, "test data for crazy protocol");
    
    // Set up state to reach instate == 2
    instate = 2;
    rlen = 50;  // Some reasonable length
    current = crazy;
    
    // Call the target function
    int result = crazyRead(context, buffer, len);
    
    // Add assertion for the suspicious memcpy at line 343
    // Check that len doesn't exceed available buffer space
    if (instate == 2 && len >= rlen) {
        klee_assert(len <= 1024);  // Buffer size check
        klee_assert(current + len <= crazy + sizeof(crazy));  // Bounds check
    }
    
    return 0;
}