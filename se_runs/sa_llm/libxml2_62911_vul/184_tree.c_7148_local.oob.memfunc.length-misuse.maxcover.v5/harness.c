#include "klee/klee.h"
#include <libxml/tree.h>
#include <libxml/parser.h>
#include <string.h>

int main(void) {
    xmlBufferPtr buf = xmlBufferCreate();
    if (!buf) return 1;

    unsigned int buf_size;
    klee_make_symbolic(&buf_size, sizeof(buf_size), "buf_size");
    klee_assume(buf_size >= 1 && buf_size < 4096);

    unsigned int buf_use;
    klee_make_symbolic(&buf_use, sizeof(buf_use), "buf_use");
    klee_assume(buf_use >= 0 && buf_use < buf_size);

    unsigned int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0 && len < buf_size);

    buf->size = buf_size;
    buf->use = buf_use;
    buf->content = (xmlChar*)malloc(buf_size);
    if (!buf->content) {
        xmlBufferFree(buf);
        return 1;
    }
    klee_make_symbolic(buf->content, buf_size, "buf_content");

    int start_buf = 0;
    if (start_buf >= buf->size) {
        buf->contentIO = (xmlChar*)malloc(buf->size + start_buf);
        if (!buf->contentIO) {
            free(buf->content);
            xmlBufferFree(buf);
            return 1;
        }
    }

    if (len > buf->use) {
        free(buf->content);
        if (buf->contentIO) free(buf->contentIO);
        xmlBufferFree(buf);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    memmove(buf->content, &buf->content[len], buf->use);
    buf->content[buf->use] = 0;

    free(buf->content);
    if (buf->contentIO) free(buf->contentIO);
    xmlBufferFree(buf);
    return 0;
}