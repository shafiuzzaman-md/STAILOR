#include "testrecurse.c"
#include <klee/klee.h>

int main() {
    char buffer[1024];
    int len;
    char mock_context[1];
    
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    void* context = (void*)mock_context;
    
    int result = hugeRead(context, buffer, len);
    
    return 0;
}