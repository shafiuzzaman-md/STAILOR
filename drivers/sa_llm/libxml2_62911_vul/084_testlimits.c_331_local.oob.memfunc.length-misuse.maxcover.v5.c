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
    
    char buffer[1024];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    // Initialize global 'crazy' buffer
    char crazy_buf[1024];
    klee_make_symbolic(crazy_buf, sizeof(crazy_buf), "crazy_buf");
    crazy = crazy_buf;
    
    // Initialize global 'filling' buffer  
    char filling_buf[1024];
    klee_make_symbolic(filling_buf, sizeof(filling_buf), "filling_buf");
    memcpy(filling, filling_buf, sizeof(filling));
    
    // Call the suspicious function
    int result = crazyRead(context, buffer, len);
    
    // Assertion to check for potential out-of-bounds access
    // Based on line 331: memcpy(buffer, current, len);
    // Check that len doesn't exceed buffer size
    klee_assert(len <= sizeof(buffer));
    
    return 0;
}