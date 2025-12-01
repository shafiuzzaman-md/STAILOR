#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global state
    fillFilling();
    
    // Make symbolic inputs for hugeRead parameters
    char buffer[4096];
    int len;
    
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0 && len <= 4096);
    
    // Initialize context by calling hugeOpen with a valid URI
    const char* uri = "huge:test";
    void* context = hugeOpen(uri);
    
    // Call the suspicious function
    if (context != NULL) {
        hugeRead(context, buffer, len);
    }
    
    return 0;
}