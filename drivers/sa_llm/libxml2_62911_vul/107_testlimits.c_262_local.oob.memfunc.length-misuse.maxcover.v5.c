#include "testlimits.c"
#include <klee/klee.h>

int main() {
    char URI[32];
    klee_make_symbolic(URI, sizeof(URI), "URI");
    
    int result = crazyMatch(URI);
    
    klee_assert(URI != NULL);
    
    return 0;
}