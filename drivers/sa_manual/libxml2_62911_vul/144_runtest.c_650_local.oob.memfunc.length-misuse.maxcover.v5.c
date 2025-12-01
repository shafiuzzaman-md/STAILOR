#include <klee/klee.h>
#include "runtest.c"

int main() {
    int fd1;
    char bytes1[4096];
    
    klee_make_symbolic(&fd1, sizeof(fd1), "fd1");
    klee_make_symbolic(bytes1, sizeof(bytes1), "bytes1");
    
    int res1 = read(fd1, bytes1, 4096);
    
    klee_assert(res1 >= 0 && res1 <= 4096);
    
    return 0;
}