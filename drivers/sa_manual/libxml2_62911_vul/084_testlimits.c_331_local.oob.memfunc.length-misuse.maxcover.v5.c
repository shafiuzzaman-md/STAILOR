#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables used by crazyRead
    crazy_indx = 0;
    instate = 0;
    rlen = 0;
    current = NULL;
    curlen = 0;
    
    // Make symbolic inputs for crazyRead parameters
    char context_buffer[100];
    char buffer[100];
    int len;
    
    klee_make_symbolic(context_buffer, sizeof(context_buffer), "context_buffer");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Initialize global 'crazy' string
    strcpy(crazy, "test_crazy_string");
    
    // Call crazyRead with symbolic inputs
    int result = crazyRead(context_buffer, buffer, len);
    
    // Add assertion to check for potential buffer overflow
    // The suspicious line 331 uses memcpy(buffer, current, len)
    // We need to ensure len doesn't exceed buffer size
    if (len >= 0) {
        klee_assert(len <= sizeof(buffer));
    }
    
    return 0;
}