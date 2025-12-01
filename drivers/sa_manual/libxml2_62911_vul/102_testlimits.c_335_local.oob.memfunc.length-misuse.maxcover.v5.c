#include <klee/klee.h>
#include "testlimits.c"

int main() {
    char buffer[1024];
    int len;
    
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    klee_assume(len >= 0);
    klee_assume(len < sizeof(buffer));
    
    void* context = crazyOpen("crazy:test");
    if (context == NULL) {
        return 0;
    }
    
    crazyRead(context, buffer, len);
    
    klee_assert(len >= 0 && len < sizeof(buffer));
    
    crazyClose(context);
    return 0;
}