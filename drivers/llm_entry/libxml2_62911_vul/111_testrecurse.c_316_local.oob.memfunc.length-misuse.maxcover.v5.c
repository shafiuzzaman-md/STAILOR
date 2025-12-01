#include <klee/klee.h>
#include "testrecurse.c"

int main() {
    // Initialize global variables used by hugeRead
    char buffer[1024];
    int len;
    
    // Make symbolic inputs for hugeRead parameters
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Initialize context - use a concrete string as context
    char context_data[1024] = "test_context";
    void *context = (void *)context_data;
    
    // Call the suspicious function
    hugeRead(context, buffer, len);
    
    return 0;
}