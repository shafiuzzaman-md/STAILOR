#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables
    fillFilling();
    
    // Symbolic inputs for hugeRead parameters
    char context_val;
    void *context = &context_val;
    char buffer[4096];
    int len;
    
    // Make inputs symbolic
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Initialize state variables to reach the vulnerable path
    instate = 2;  // This will take the path to line 197
    rlen = 4096;  // Set a reasonable length
    current = &filling[0];  // Point to valid buffer
    
    // Call the target function
    int result = hugeRead(context, buffer, len);
    
    // Assertion for potential out-of-bounds access
    // Check that len doesn't exceed the bounds of the source buffer
    klee_assert(len <= CHUNK && len >= 0);
    
    return 0;
}