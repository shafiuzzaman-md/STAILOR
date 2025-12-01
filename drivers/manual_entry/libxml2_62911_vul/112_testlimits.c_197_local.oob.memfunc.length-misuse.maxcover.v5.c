#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global state
    fillFilling();
    
    // Make symbolic inputs for hugeRead parameters
    void* context;
    char buffer[4096];
    int len;
    
    klee_make_symbolic(&context, sizeof(context), "context");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Call the suspicious function
    hugeRead(context, buffer, len);
    
    return 0;
}