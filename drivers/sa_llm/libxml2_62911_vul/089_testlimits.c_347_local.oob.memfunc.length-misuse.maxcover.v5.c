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
    char context_buffer[1024];
    char buffer[1024];
    int len;
    
    klee_make_symbolic(context_buffer, sizeof(context_buffer), "context_buffer");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Initialize crazy string
    strcpy(crazy, "test data for crazy protocol");
    
    // Set up state to reach instate == 2 (targeting line 347)
    instate = 2;
    current = &crazy[0];
    rlen = strlen(crazy);
    
    // Call the suspicious function
    int result = crazyRead((void*)context_buffer, buffer, len);
    
    // Assertion to check for potential buffer overflow at line 347
    // Check that len doesn't exceed the remaining buffer size
    if (instate == 2 && len < rlen) {
        klee_assert(current + len <= crazy + sizeof(crazy));
    }
    
    return 0;
}