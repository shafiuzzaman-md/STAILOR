#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBuf buf_struct;
    xmlBufPtr buf = &buf_struct;
    
    klee_make_symbolic(&buf_struct, sizeof(xmlBuf), "buf");
    
    size_t len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    xmlBufShrink(buf, len);
    
    return 0;
}