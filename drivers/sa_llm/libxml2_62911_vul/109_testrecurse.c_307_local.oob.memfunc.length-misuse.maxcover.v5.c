#include <klee/klee.h>
#include "testrecurse.c"

int main() {
    char buffer[1024];
    int len;
    
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 1024);
    
    char *context = "test_context";
    current = "test_data";
    rlen = strlen(current);
    curseg = 0;
    
    int result = hugeRead(context, buffer, len);
    
    klee_assert(len <= rlen);
    
    return 0;
}