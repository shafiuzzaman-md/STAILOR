#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables
    currentTest = 0;
    instate = 0;
    curlen = 0;
    maxlen = 64 * 1024 * 1024;
    dotlen = maxlen / 10;
    
    // Initialize filling array
    fillFilling();
    
    // Initialize hugeTests array (simplified)
    // We'll use a minimal setup to trigger the suspicious line
    hugeTests[0].name = "huge:test";
    hugeTests[0].start = "test_data";
    hugeTests[0].end = "end_data";
    
    // Set up context for hugeRead
    char *context = hugeOpen("huge:test");
    
    // Make buffer and len symbolic
    char buffer[4096];
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Constrain len to reasonable bounds but allow negative values to test the check
    klee_assume(len >= -100);
    klee_assume(len <= 4096);
    
    // Call the target function
    int result = hugeRead(context, buffer, len);
    
    // Assertion based on suspicious line 189 - check buffer bounds
    // The suspicious memcpy copies 'len' bytes from 'current' to 'buffer'
    // We want to ensure we don't read beyond the bounds of either buffer
    if (context != NULL && buffer != NULL && len >= 0 && instate == 0 && len < rlen) {
        klee_assert(len <= 4096);  // Buffer size check
        if (current != NULL) {
            klee_assert(len <= strlen(current));  // Source bounds check
        }
    }
    
    return 0;
}