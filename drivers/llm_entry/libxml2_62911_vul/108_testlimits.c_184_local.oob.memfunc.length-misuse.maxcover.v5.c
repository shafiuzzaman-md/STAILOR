#include <klee/klee.h>
#include "testlimits.c"

int main() {
    char buffer[4096];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    void* context = NULL;
    
    int result = hugeRead(context, buffer, len);
    
    return 0;
}