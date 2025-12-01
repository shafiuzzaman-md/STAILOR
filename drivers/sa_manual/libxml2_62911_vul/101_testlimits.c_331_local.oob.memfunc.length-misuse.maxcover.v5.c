#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables
    crazy_indx = 0;
    rlen = 0;
    current = NULL;
    instate = 0;
    curlen = 0;
    
    // Create symbolic inputs for crazyRead parameters
    char context_buffer[1024];
    char buffer[1024];
    int len;
    
    // Make inputs symbolic
    klee_make_symbolic(context_buffer, sizeof(context_buffer), "context_buffer");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Initialize global 'crazy' string
    strcpy(crazy, "test_crazy_string");
    
    // Call the suspicious function
    int result = crazyRead(context_buffer, buffer, len);
    
    // Add assertion to check for potential buffer overflow
    // The suspicious line is memcpy(buffer, current, len) at line 331
    // Check that len doesn't exceed buffer size
    klee_assert(len <= sizeof(buffer));
    
    return 0;
}