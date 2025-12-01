#include "testlimits.c"
#include <klee/klee.h>

int main() {
    char buffer[4096];
    int len;
    
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len <= 4096);
    
    void* context = (void*)0x1234;
    
    int result = hugeRead(context, buffer, len);
    
    klee_assert(len >= 0 && len <= 4096);
    
    return 0;
}