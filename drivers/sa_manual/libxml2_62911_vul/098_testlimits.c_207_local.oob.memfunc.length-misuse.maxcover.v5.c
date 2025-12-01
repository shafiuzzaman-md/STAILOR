#include <klee/klee.h>
#include "testlimits.c"

int main() {
    fillFilling();
    
    char buffer[CHUNK + 1];
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    void* context = (void*)0x1234;
    
    int result = hugeRead(context, buffer, len);
    
    klee_assert(len >= 0 && len <= CHUNK);
    
    return 0;
}