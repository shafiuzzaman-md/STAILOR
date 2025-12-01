#include <klee/klee.h>
#include "testlimits.c"

int main() {
    char URI[10];
    klee_make_symbolic(URI, sizeof(URI), "URI");
    
    void* context = hugeOpen(URI);
    
    if (context != NULL) {
        char buffer[100];
        int len;
        klee_make_symbolic(&len, sizeof(len), "len");
        hugeRead(context, buffer, len);
    }
    
    return 0;
}