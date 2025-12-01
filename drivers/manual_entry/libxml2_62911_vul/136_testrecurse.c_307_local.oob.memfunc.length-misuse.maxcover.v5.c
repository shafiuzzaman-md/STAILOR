#include <klee/klee.h>
#include "testrecurse.h"

int main() {
    char buffer[1024];
    int len;
    
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    void* context = hugeOpen("test_uri");
    hugeRead(context, buffer, len);
    hugeClose(context);
    
    return 0;
}