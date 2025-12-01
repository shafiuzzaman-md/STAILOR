#include <klee/klee.h>
#include "runtest.c"

int main() {
    char buffer[1024];
    int len;
    
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    klee_assume(len >= 0);
    klee_assume(len <= 1024);
    
    const char* context = urip_res;
    urip_rlen = strlen(urip_res);
    
    int result = uripRead((void*)context, buffer, len);
    
    klee_assert(len <= urip_rlen);
    
    return 0;
}