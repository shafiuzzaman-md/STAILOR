#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables used by crazyRead
    crazy_indx = 0;
    rlen = 0;
    current = NULL;
    instate = 0;
    curlen = 0;
    
    // Make symbolic inputs for crazyRead parameters
    char context_val;
    void* context = &context_val;
    char buffer[4096];
    int len;
    
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Initialize filling array (used in line 353)
    // We'll create a reasonable size array and make it symbolic
    #define FILLING_SIZE 1024
    char filling[FILLING_SIZE];
    klee_make_symbolic(filling, sizeof(filling), "filling");
    
    // Call the suspicious function
    int result = crazyRead(context, buffer, len);
    
    // Add assertion to check for potential out-of-bounds access
    // The suspicious line 353 does: memcpy(buffer, &filling[0], len);
    // We want to ensure len doesn't exceed buffer size or filling size
    klee_assert(len <= (int)sizeof(buffer) && len <= FILLING_SIZE);
    
    return 0;
}