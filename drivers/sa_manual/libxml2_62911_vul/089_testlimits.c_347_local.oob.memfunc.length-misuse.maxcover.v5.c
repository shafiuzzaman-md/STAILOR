#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables
    crazy_indx = 0;
    rlen = 0;
    current = NULL;
    instate = 0;
    curlen = 0;
    maxlen = 100;
    
    // Make symbolic inputs for crazyRead parameters
    void* context;
    char buffer[100];
    int len;
    
    klee_make_symbolic(&context, sizeof(context), "context");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Initialize crazy string
    strcpy(crazy, "test data for crazy protocol");
    
    // Call the target function
    int result = crazyRead(context, buffer, len);
    
    // Add assertion near the suspicious line to check for buffer overflow
    // The suspicious line is line 347: memcpy(buffer, current, len);
    // We need to ensure len doesn't exceed buffer size
    if (context != NULL && buffer != NULL && len >= 0 && instate == 2 && len < rlen) {
        klee_assert(len <= sizeof(buffer));
    }
    
    return 0;
}