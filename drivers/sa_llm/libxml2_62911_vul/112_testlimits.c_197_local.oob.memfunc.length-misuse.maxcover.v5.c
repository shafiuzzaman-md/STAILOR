#include "testlimits.c"
#include <klee/klee.h>

int main() {
    fillFilling();
    
    char buffer[4096];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    void* context = (void*)0x1234;
    
    int result = hugeRead(context, buffer, len);
    
    klee_assert(len >= 0 && len <= 4096);
    
    return 0;
}