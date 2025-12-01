#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables
    crazy_indx = 0;
    instate = 0;
    rlen = 0;
    current = NULL;
    curlen = 0;
    
    // Make symbolic inputs for crazyRead parameters
    char buffer[1024];
    int len;
    void* context;
    
    klee_make_symbolic(&context, sizeof(context), "context");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Initialize global 'crazy' buffer
    char crazy_data[1024];
    klee_make_symbolic(crazy_data, sizeof(crazy_data), "crazy_data");
    crazy = crazy_data;
    
    // Set up state to reach the suspicious line (instate == 2)
    instate = 2;
    rlen = 50;  // Some reasonable length
    current = &crazy[0];
    
    // Call the target function
    int result = crazyRead(context, buffer, len);
    
    // Assertion for potential out-of-bounds access
    // Check if the memcpy at line 343 could exceed buffer bounds
    if (instate == 2 && len >= rlen && rlen > 0) {
        klee_assert(len <= 1024);  // Buffer size check
        klee_assert(current + len <= crazy + 1024);  // Source bounds check
    }
    
    return 0;
}