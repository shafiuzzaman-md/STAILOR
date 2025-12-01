#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables
    fillFilling();
    
    // Symbolic inputs for hugeRead parameters
    void* context;
    char buffer[CHUNK + 1];
    int len;
    
    // Make inputs symbolic
    klee_make_symbolic(&context, sizeof(context), "context");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Initialize other required global state
    instate = 1;  // Force execution path to line 207
    curlen = 0;
    maxlen = 64 * 1024 * 1024;
    
    // Call the target function
    int result = hugeRead(context, buffer, len);
    
    // Assertion for potential buffer overflow
    // Check if len exceeds CHUNK when instate == 1
    if (instate == 1 && len > 0) {
        klee_assert(len <= CHUNK);
    }
    
    return 0;
}