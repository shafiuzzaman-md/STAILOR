#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables that might be used
    crazy_indx = 0;
    maxlen = 100;
    curlen = 0;
    instate = 0;
    
    // Make symbolic inputs for crazyRead parameters
    char context_buffer[100];
    char buffer[100];
    int len;
    
    klee_make_symbolic(context_buffer, sizeof(context_buffer), "context_buffer");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Initialize global 'crazy' string
    strcpy(crazy, "test_crazy_string");
    
    // Initialize global 'filling' array
    for (int i = 0; i < CHUNK; i++) {
        filling[i] = 'A' + (i % 26);
    }
    
    // Call the suspicious function
    crazyRead((void*)context_buffer, buffer, len);
    
    return 0;
}