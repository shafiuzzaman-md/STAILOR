#include <klee/klee.h>
#include "testrecurse.h"

int main() {
    char buffer[1024];
    char context_data[1024];
    int len;
    
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(context_data, sizeof(context_data), "context_data");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    hugeRead(context_data, buffer, len);
    
    return 0;
}