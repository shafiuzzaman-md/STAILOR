#include <klee/klee.h>
#include "testchar.c"

int main() {
    char buf[1024];
    klee_make_symbolic(buf, sizeof(buf), "buf");
    
    int result = testChar(buf);
    
    klee_assert(0);
    return 0;
}