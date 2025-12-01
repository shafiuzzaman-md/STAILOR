#include <klee/klee.h>
#include "testrecurse.c"

int main() {
    char buffer[1024];
    int len;
    
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    char context_data[1024];
    void *context = context_data;
    
    hugeRead(context, buffer, len);
    
    return 0;
}