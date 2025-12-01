#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables used by the crazy* functions
    crazy_indx = 0;
    rlen = 0;
    current = NULL;
    instate = 0;
    curlen = 0;
    
    // Create symbolic buffer for URI
    char URI[32];
    klee_make_symbolic(URI, sizeof(URI), "URI");
    
    // Call crazyOpen as the entry point
    void* context = crazyOpen(URI);
    
    // If context was successfully created, call crazyRead
    if (context != NULL) {
        char buffer[256];
        int len;
        klee_make_symbolic(&len, sizeof(len), "len");
        
        // Call the suspicious function crazyRead
        crazyRead(context, buffer, len);
        
        // Clean up
        crazyClose(context);
    }
    
    return 0;
}