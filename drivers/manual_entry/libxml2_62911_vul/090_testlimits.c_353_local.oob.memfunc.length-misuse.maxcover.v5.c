#include <klee/klee.h>
#include "testlimits.c"

int main() {
    void* context;
    char buffer[1024];
    int len;
    
    klee_make_symbolic(&context, sizeof(context), "context");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    crazyRead(context, buffer, len);
    
    return 0;
}