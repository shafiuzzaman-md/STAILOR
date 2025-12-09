#include <libxml/tree.h>
#include <libxml/parser.h>
#include <klee/klee.h>

int main(void) {
    xmlBufferPtr buf = xmlBufferCreate();
    if (!buf) return 1;

    unsigned int len;
    klee_make_symbolic(&len, sizeof(len), "len");

    unsigned int initial_use;
    klee_make_symbolic(&initial_use, sizeof(initial_use), "initial_use");
    klee_assume(initial_use < buf->size);

    buf->use = initial_use;

    char *str = (char *)malloc(len + 1);
    if (!str) {
        xmlBufferFree(buf);
        return 1;
    }
    klee_make_symbolic(str, len + 1, "str");
    str[len] = 0;

    int result = xmlBufferAdd(buf, (const xmlChar *)str, len);

    if (result == 0) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    free(str);
    xmlBufferFree(buf);
    return 0;
}