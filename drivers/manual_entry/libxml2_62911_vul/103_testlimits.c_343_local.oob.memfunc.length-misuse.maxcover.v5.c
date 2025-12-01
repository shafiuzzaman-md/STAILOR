#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables that might be used
    crazy_indx = 0;
    rlen = 0;
    instate = 0;
    curlen = 0;
    
    // Make symbolic inputs for crazyRead parameters
    void* context;
    char buffer[1024];
    int len;
    
    klee_make_symbolic(&context, sizeof(context), "context");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Call the suspicious function
    crazyRead(context, buffer, len);
    
    return 0;
}