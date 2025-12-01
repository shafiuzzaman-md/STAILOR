#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables used in crazyRead
    crazy_indx = 0;
    rlen = 0;
    current = NULL;
    instate = 0;
    curlen = 0;
    
    // Make symbolic inputs for crazyRead parameters
    char context_buffer[100];
    char buffer[100];
    int len;
    
    klee_make_symbolic(context_buffer, sizeof(context_buffer), "context_buffer");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Initialize crazy string and current pointer
    char crazy_data[100];
    klee_make_symbolic(crazy_data, sizeof(crazy_data), "crazy_data");
    crazy = crazy_data;
    current = crazy;
    
    // Call crazyRead with symbolic inputs
    int result = crazyRead(context_buffer, buffer, len);
    
    // Add assertion to check for potential buffer overflow at line 335
    // The memcpy at line 335 copies 'len' bytes from 'current' to 'buffer'
    // We need to ensure len doesn't exceed buffer size
    klee_assert(len <= 100);
    
    return 0;
}