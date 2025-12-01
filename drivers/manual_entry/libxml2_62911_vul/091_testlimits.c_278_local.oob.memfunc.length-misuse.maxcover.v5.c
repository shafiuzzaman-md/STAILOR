#include <klee/klee.h>
#include "testlimits.c"

int main() {
    // Make URI symbolic for crazyOpen entry point
    char URI[32];
    klee_make_symbolic(URI, sizeof(URI), "URI");
    
    // Call the suspicious function
    crazyOpen(URI);
    
    return 0;
}