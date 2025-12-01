#include <klee/klee.h>
#include "testlimits.c"

int main() {
    char URI[64];
    klee_make_symbolic(URI, sizeof(URI), "URI");
    
    crazyOpen(URI);
    
    return 0;
}