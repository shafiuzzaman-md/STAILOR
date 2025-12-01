#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

typedef struct _xmlBuf xmlBuf;
typedef xmlBuf *xmlBufPtr;

int main() {
    xmlBufPtr buf;
    size_t size;
    
    klee_make_symbolic(&buf, sizeof(buf), "buf");
    klee_make_symbolic(&size, sizeof(size), "size");
    
    klee_assume(buf != NULL);
    klee_assume(!buf->error);
    
    xmlBufResize(buf, size);
    
    return 0;
}