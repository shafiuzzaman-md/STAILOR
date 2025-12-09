#include <libxml/xmlmemory.h>
#include <libxml/tree.h>
#include <libxml/parser.h>
#include <libxml/xmlIO.h>
#include <libxml/buf.h>
#include <klee/klee.h>

int main(void) {
    xmlBufferPtr buf = xmlBufferCreate();
    if (!buf) return 0;

    buf->alloc = XML_BUFFER_ALLOC_IO;

    size_t contentIO_size;
    klee_make_symbolic(&contentIO_size, sizeof(contentIO_size), "contentIO_size");
    klee_assume(contentIO_size > 0 && contentIO_size < 1024);

    xmlChar* contentIO = (xmlChar*)xmlMalloc(contentIO_size);
    if (!contentIO) {
        xmlBufferFree(buf);
        return 0;
    }
    buf->contentIO = contentIO;
    buf->content = buf->contentIO;

    size_t use;
    klee_make_symbolic(&use, sizeof(use), "use");
    klee_assume(use > 0 && use < contentIO_size);

    buf->use = use;
    buf->content[use] = 0;
    buf->size = contentIO_size;

    size_t start_buf_offset;
    klee_make_symbolic(&start_buf_offset, sizeof(start_buf_offset), "start_buf_offset");
    klee_assume(start_buf_offset > 0 && start_buf_offset < contentIO_size);

    buf->content = buf->contentIO + start_buf_offset;

    size_t newSize;
    klee_make_symbolic(&newSize, sizeof(newSize), "newSize");
    klee_assume(newSize >= 0 && newSize < 2048);

    if ((buf->alloc == XML_BUFFER_ALLOC_IO) && (buf->contentIO != NULL)) {
        size_t start_buf = buf->content - buf->contentIO;

        if (start_buf > newSize) {
            klee_assert(0 && "SAILR_REACH_ASSERT");
            memmove(buf->contentIO, buf->content, buf->use);
        }
    }

    xmlBufferFree(buf);
    return 0;
}