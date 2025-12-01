#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables
    fillFilling();
    maxlen = 64 * 1024 * 1024;
    curlen = 0;
    dotlen = maxlen / 10;
    
    // Set up context for hugeRead
    void* context = (void*)0x1234;  // Non-null dummy context
    
    // Create symbolic buffer and length
    char buffer[4097];
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Set up state for the vulnerable path (instate == 1)
    instate = 1;
    
    // Call the function under test
    int result = hugeRead(context, buffer, len);
    
    // Assertion for buffer bounds check - the vulnerability condition
    // Line 207: memcpy(buffer, &filling[0], len);
    klee_assert(len <= CHUNK);
    
    return 0;
}