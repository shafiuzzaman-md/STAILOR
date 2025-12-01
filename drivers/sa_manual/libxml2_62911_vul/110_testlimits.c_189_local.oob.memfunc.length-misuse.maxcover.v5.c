#include "testlimits.c"
#include <klee/klee.h>

int main() {
    char buffer[4096];
    int len;
    
    klee_make_symbolic(&len, sizeof(len), "len");
    
    void* context = hugeOpen("huge:test");
    if (context == NULL) return 0;
    
    int result = hugeRead(context, buffer, len);
    
    klee_assert(len >= 0 && len <= 4096);
    
    return 0;
}