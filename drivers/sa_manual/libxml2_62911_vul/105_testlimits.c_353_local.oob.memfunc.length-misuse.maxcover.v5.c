#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables
    crazy_indx = 0;
    rlen = 0;
    current = NULL;
    instate = 0;
    curlen = 0;
    
    // Make symbolic inputs for crazyRead parameters
    char context_val;
    void* context = &context_val;
    
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    char buffer[CHUNK * 2];  // Buffer larger than CHUNK to allow overflow checks
    
    // Initialize global arrays
    klee_make_symbolic(crazy, sizeof(crazy), "crazy");
    klee_make_symbolic(filling, sizeof(filling), "filling");
    
    // Set state to trigger the suspicious line (instate == 1)
    instate = 1;
    
    // Call the target function
    int result = crazyRead(context, buffer, len);
    
    // Assertion for potential buffer overflow at line 353
    // Check that len doesn't exceed filling buffer size
    klee_assert(len <= sizeof(filling));
    
    return 0;
}