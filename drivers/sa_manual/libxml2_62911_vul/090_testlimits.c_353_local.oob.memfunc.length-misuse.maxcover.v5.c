#include "testlimits.c"
#include <klee/klee.h>

int main() {
    char buffer[1024];
    int len;
    char filling[1024];

    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(filling, sizeof(filling), "filling");

    void* context = (void*)&filling[0];
    
    klee_assume(len >= 0);
    klee_assume(len <= 1024);

    int result = crazyRead(context, buffer, len);
    
    klee_assert(len <= 1024);
    
    return 0;
}