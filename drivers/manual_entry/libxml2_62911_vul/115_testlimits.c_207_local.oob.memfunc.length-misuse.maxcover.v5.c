#include "testlimits.c"
#include <klee/klee.h>

int main() {
    void* context;
    char buffer[4096];
    int len;

    klee_make_symbolic(&context, sizeof(context), "context");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    hugeRead(context, buffer, len);
    
    return 0;
}