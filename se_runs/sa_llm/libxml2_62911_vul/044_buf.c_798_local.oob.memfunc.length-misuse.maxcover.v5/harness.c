#include <libxml/xmlmemory.h>
#include <libxml/tree.h>
#include <libxml/parser.h>
#include <klee/klee.h>

int main(void) {
    xmlBufferPtr buf = xmlBufferCreate();
    if (!buf) return 1;

    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 1024);

    char *str = (char*)malloc(len + 1);
    if (!str) {
        xmlBufferFree(buf);
        return 1;
    }
    klee_make_symbolic(str, len + 1, "str");
    str[len] = 0;

    int use;
    klee_make_symbolic(&use, sizeof(use), "use");
    klee_assume(use >= 0);
    klee_assume(use < 1024);

    int size;
    klee_make_symbolic(&size, sizeof(size), "size");
    klee_assume(size >= 0);
    klee_assume(size < 2048);

    buf->use = use;
    buf->size = size;
    buf->content = (xmlChar*)malloc(size + 1);
    if (!buf->content) {
        free(str);
        xmlBufferFree(buf);
        return 1;
    }
    klee_make_symbolic(buf->content, size + 1, "content");
    if (size > 0) {
        buf->content[size] = 0;
    }

    int ret = xmlBufAdd(buf, (const xmlChar*)str, len);
    if (ret == 0) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    free(buf->content);
    free(str);
    xmlBufferFree(buf);
    return 0;
}