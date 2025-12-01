#include <klee/klee.h>
#include "testThreads.c"

int main(void) {
    // Initialize libxml2 parser
    xmlInitParser();
    
    // Check thread local storage
    if (xmlCheckThreadLocalStorage() != 0) {
        return 1;
    }
    
    // Symbolic inputs for thread parameters
    char filename_buffer[256];
    klee_make_symbolic(filename_buffer, sizeof(filename_buffer), "filename_buffer");
    
    // Create a symbolic thread parameter
    xmlThreadParams params;
    params.filename = filename_buffer;
    klee_make_symbolic(&params.okay, sizeof(params.okay), "params_okay");
    
    // Call the thread function directly to exercise the suspicious code path
    thread_specific_data(&params);
    
    // Cleanup
    xmlCleanupParser();
    
    return 0;
}