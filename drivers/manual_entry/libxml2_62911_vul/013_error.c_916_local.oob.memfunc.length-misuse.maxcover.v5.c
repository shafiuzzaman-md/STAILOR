#include <klee/klee.h>
#include "error.c"

int main() {
    xmlError err;
    
    // Make the error struct fields symbolic
    klee_make_symbolic(&err, sizeof(xmlError), "err");
    
    // Call the target function
    xmlResetError(&err);
    
    return 0;
}