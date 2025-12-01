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
    void* context;
    char buffer[1024];
    int len;
    
    klee_make_symbolic(&context, sizeof(context), "context");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Initialize global 'crazy' buffer
    char crazy_data[1024];
    klee_make_symbolic(crazy_data, sizeof(crazy_data), "crazy_data");
    crazy = crazy_data;
    
    // Call the target function
    int result = crazyRead(context, buffer, len);
    
    // Add assertion to check for potential buffer overflow at line 347
    // The suspicious line does memcpy(buffer, current, len) without proper bounds checking
    if (instate == 2 && len < rlen && current != NULL && buffer != NULL && len > 0) {
        // Check if the copy would exceed buffer bounds
        klee_assert(!(current + len > crazy + sizeof(crazy_data)));
    }
    
    return 0;
}