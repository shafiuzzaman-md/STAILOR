#include "testlimits.c"
#include <klee/klee.h>

int main() {
    char URI[64];
    klee_make_symbolic(URI, sizeof(URI), "URI");
    
    void* context = hugeOpen(URI);
    
    if (context != NULL) {
        char buffer[1024];
        int len;
        klee_make_symbolic(&len, sizeof(len), "len");
        
        hugeRead(context, buffer, len);
        hugeClose(context);
    }
    
    return 0;
}