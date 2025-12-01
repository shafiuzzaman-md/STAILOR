#include "testlimits.c"
#include <klee/klee.h>

int main() {
    fillFilling();
    
    char buffer[4096];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    void* context = NULL;
    
    hugeRead(context, buffer, len);
    
    return 0;
}