#include <klee/klee.h>
#include "testlimits.c"

int main() {
    char URI[32];
    klee_make_symbolic(URI, sizeof(URI), "URI");
    
    void* context = crazyOpen(URI);
    
    if (context != NULL) {
        char buffer[1024];
        int len;
        klee_make_symbolic(&len, sizeof(len), "len");
        
        crazyRead(context, buffer, len);
        crazyClose(context);
    }
    
    return 0;
}