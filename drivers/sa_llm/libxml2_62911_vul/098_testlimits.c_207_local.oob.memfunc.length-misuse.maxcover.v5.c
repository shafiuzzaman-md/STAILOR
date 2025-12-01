#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables
    fillFilling();
    
    // Make symbolic inputs for hugeRead parameters
    char buffer[CHUNK + 1];
    int len;
    
    // Make len symbolic with reasonable bounds
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len <= CHUNK * 2);  // Allow some values larger than CHUNK
    
    // Set up context - use a simple non-null pointer
    void* context = (void*)1;
    
    // Initialize state variables to reach the vulnerable path
    instate = 1;  // This will take the path to line 207
    curlen = 0;
    maxlen = 64 * 1024 * 1024;  // Set a reasonable maxlen
    
    // Call the function under test
    int result = hugeRead(context, buffer, len);
    
    // Add assertion for potential buffer overflow
    // Check that len doesn't exceed CHUNK when accessing filling array
    klee_assert(len <= CHUNK);
    
    return 0;
}