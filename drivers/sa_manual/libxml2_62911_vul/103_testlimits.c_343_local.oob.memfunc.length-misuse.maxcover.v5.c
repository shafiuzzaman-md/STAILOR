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
    char context_buffer;
    void* context = &context_buffer;
    
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    char buffer[1024];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    // Initialize crazy string
    strcpy(crazy, "test data for crazy protocol");
    
    // Set up state to reach instate == 2 (line 339)
    instate = 2;
    rlen = strlen(crazy);
    current = crazy;
    crazy_indx = 0;
    
    // Call the target function
    int result = crazyRead(context, buffer, len);
    
    // Assertion for potential buffer overflow at line 343
    // Check that len doesn't exceed buffer size when memcpy is called
    if (instate == 2 && len >= rlen) {
        klee_assert(len <= sizeof(buffer));
    }
    
    return 0;
}