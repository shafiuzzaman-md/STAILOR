#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Initialize global variables used by crazyRead
    char crazy[1024];
    char filling[1024];
    int crazy_indx = 0;
    int rlen = 0;
    char *current = NULL;
    int instate = 0;
    int curlen = 0;
    int maxlen = 1024;
    int CHUNK = 256;

    // Make global arrays symbolic
    klee_make_symbolic(crazy, sizeof(crazy), "crazy");
    klee_make_symbolic(filling, sizeof(filling), "filling");

    // Symbolic parameters for crazyRead
    char buffer[1024];
    int len;
    
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    // Constrain len to reasonable bounds
    klee_assume(len >= 0);
    klee_assume(len <= 1024);
    
    // Initialize context pointer (use crazy array as context)
    void *context = &crazy[0];
    
    // Call the suspicious function
    crazyRead(context, buffer, len);
    
    return 0;
}