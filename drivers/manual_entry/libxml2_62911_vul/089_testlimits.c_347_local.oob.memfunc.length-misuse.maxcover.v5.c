#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables
    crazy_indx = 0;
    rlen = 0;
    current = NULL;
    instate = 0;
    curlen = 0;
    maxlen = 1024;  // Reasonable default
    CHUNK = 256;    // Reasonable default
    
    // Make crazy buffer symbolic
    char crazy_buf[1024];
    klee_make_symbolic(crazy_buf, sizeof(crazy_buf), "crazy_buf");
    crazy = crazy_buf;
    
    // Make context symbolic (simulate file handle)
    void* context;
    klee_make_symbolic(&context, sizeof(context), "context");
    
    // Make buffer symbolic
    char buffer[1024];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    // Make len symbolic with reasonable bounds
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len <= 1024);
    
    // Call the suspicious function
    crazyRead(context, buffer, len);
    
    return 0;
}