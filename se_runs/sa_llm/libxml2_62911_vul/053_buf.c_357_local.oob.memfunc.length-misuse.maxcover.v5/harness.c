#include "klee/klee.h"
#include <libxml/xmlmemory.h>
#include <libxml/tree.h>
#include <libxml/parser.h>
#include <string.h>

int main(void) {
    xmlBufferPtr buf = xmlBufferCreate();
    if (!buf) return 0;

    unsigned int initial_size;
    klee_make_symbolic(&initial_size, sizeof(initial_size), "initial_size");
    klee_assume(initial_size > 0 && initial_size < 1024);

    char* initial_content = (char*)malloc(initial_size);
    klee_make_symbolic(initial_content, initial_size, "initial_content");
    xmlBufferAdd(buf, (xmlChar*)initial_content, initial_size);
    free(initial_content);

    unsigned int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len <= buf->use);

    if (len > 0) {
        xmlBufferShrink(buf, len);
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlBufferFree(buf);
    return 0;
}