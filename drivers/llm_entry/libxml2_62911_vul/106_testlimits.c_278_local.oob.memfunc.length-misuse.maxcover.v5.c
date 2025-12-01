#include <klee/klee.h>
#include "testlimits.c"

int main() {
    char URI[100];
    klee_make_symbolic(URI, sizeof(URI), "URI");
    
    crazyOpen(URI);
    
    return 0;
}