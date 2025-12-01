#include <klee/klee.h>
#include "testlimits.c"

int main() {
    char URI[32];
    klee_make_symbolic(URI, sizeof(URI), "URI");
    
    int result = crazyMatch(URI);
    
    return 0;
}