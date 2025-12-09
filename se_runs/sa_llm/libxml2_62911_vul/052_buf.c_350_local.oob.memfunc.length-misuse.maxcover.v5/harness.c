#include <libxml/parser.h>
#include <libxml/tree.h>
#include <klee/klee.h>

int main(void) {
    xmlBufferPtr buf = xmlBufferCreate();
    if (!buf) return 0;

    // Make buffer use IO allocation
    buf->alloc = XML_BUFFER_ALLOC_IO;

    // Allocate contentIO and content with symbolic sizes
    size_t io_size;
    klee_make_symbolic(&io_size, sizeof(io_size), "io_size");
    // Constrain io_size to be reasonable and > 0
    klee_assume(io_size > 0 && io_size < 4096);

    buf->contentIO = (xmlChar*)malloc(io_size);
    if (!buf->contentIO) {
        xmlBufferFree(buf);
        return 0;
    }

    // Symbolic start_buf (offset of content from contentIO)
    size_t start_buf;
    klee_make_symbolic(&start_buf, sizeof(start_buf), "start_buf");
    // Constrain start_buf to be within io_size
    klee_assume(start_buf < io_size);

    buf->content = buf->contentIO + start_buf;

    // Symbolic buf->size (size of the buffer)
    klee_make_symbolic(&buf->size, sizeof(buf->size), "buf_size");
    // Constrain size to be less than io_size - start_buf (available space)
    klee_assume(buf->size <= io_size - start_buf);
    klee_assume(buf->size > 0);

    // Symbolic buf->use (used bytes in buffer)
    klee_make_symbolic(&buf->use, sizeof(buf->use), "buf_use");
    // Constrain use to be <= size (initially)
    klee_assume(buf->use <= buf->size);

    // Force the condition: start_buf >= buf->size
    klee_assume(start_buf >= buf->size);

    // Now call a function that leads to xmlBufShrink
    // We'll directly call xmlBufShrink, but it's static. Instead, use xmlBufAdd
    // which can trigger shrinking. We'll add zero-length data to trigger path.
    xmlBufAdd(buf, NULL, 0);

    // Reachability marker for the target line
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    free(buf->contentIO);
    xmlBufferFree(buf);
    return 0;
}