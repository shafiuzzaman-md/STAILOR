#include <klee/klee.h>
#include "xzlib.h"

int main() {
    unsigned char buf[1024];
    unsigned int len = 1024;
    
    klee_make_symbolic(buf, sizeof(buf), "buf");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    xz_decompress(buf, &len, buf, len);
    
    return 0;
}