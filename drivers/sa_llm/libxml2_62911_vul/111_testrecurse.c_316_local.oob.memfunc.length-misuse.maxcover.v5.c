#include <klee/klee.h>
#include "testrecurse.c"

int main() {
    char buffer[1024];
    int len;
    
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 1024);
    
    void *context = hugeOpen("test_uri");
    if (context == NULL) {
        return 0;
    }
    
    int result = hugeRead(context, buffer, len);
    
    klee_assert(rlen >= 0);
    
    return 0;
}