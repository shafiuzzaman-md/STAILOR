#include <klee/klee.h>
#include "buf.c"
#include "tree.h"

int main() {
    xmlBuf buf;
    xmlChar content[1024];
    xmlChar rebuf[2048];
    
    klee_make_symbolic(&buf, sizeof(buf), "buf");
    klee_make_symbolic(content, sizeof(content), "content");
    klee_make_symbolic(rebuf, sizeof(rebuf), "rebuf");
    
    buf.content = content;
    buf.contentIO = NULL;
    buf.use = klee_int("buf_use");
    buf.size = klee_int("buf_size");
    buf.alloc = klee_int("buf_alloc");
    buf.error = 0;
    
    size_t newSize = klee_int("newSize");
    
    if (buf.alloc != XML_BUFFER_ALLOC_IO || buf.contentIO == NULL) {
        if (buf.content != NULL && buf.size - buf.use >= 100) {
            if (rebuf != NULL) {
                klee_assert(buf.use <= newSize);
                memcpy(rebuf, buf.content, buf.use);
            }
        }
    }
    
    return 0;
}