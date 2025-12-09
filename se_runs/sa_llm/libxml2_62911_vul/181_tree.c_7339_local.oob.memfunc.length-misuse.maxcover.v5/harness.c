#include <libxml/tree.h>
#include <libxml/parser.h>
#include <klee/klee.h>

int main(void) {
    xmlBufferPtr buf = xmlBufferCreate();
    if (!buf) return 0;

    // Set buffer allocation type to IO to enter the target branch
    buf->alloc = XML_BUFFER_ALLOC_IO;

    // Allocate contentIO and content with symbolic sizes and offset
    size_t io_size, content_offset, use_size, newSize;
    klee_make_symbolic(&io_size, sizeof(io_size), "io_size");
    klee_make_symbolic(&content_offset, sizeof(content_offset), "content_offset");
    klee_make_symbolic(&use_size, sizeof(use_size), "use_size");
    klee_make_symbolic(&newSize, sizeof(newSize), "newSize");

    // Constrain sizes to be reasonable and avoid overflows
    klee_assume(io_size > 0 && io_size < 4096);
    klee_assume(content_offset >= 0 && content_offset < io_size);
    klee_assume(use_size >= 0 && use_size <= io_size - content_offset);
    klee_assume(newSize >= 0 && newSize < 4096);

    buf->contentIO = (xmlChar*)xmlMalloc(io_size);
    if (!buf->contentIO) {
        xmlBufferFree(buf);
        return 0;
    }
    buf->content = buf->contentIO + content_offset;
    buf->use = use_size;
    buf->size = io_size;

    // Ensure the buffer content is initialized (optional for KLEE)
    for (size_t i = 0; i < use_size; ++i) {
        buf->content[i] = 'A';
    }

    // Call xmlBufferGrow to reach the target line
    int result = xmlBufferGrow(buf, newSize);

    // Place reachability assertion near the vulnerable memmove
    // The target line is inside the condition (start_buf > newSize)
    // We add an assertion that we reached the vulnerable path.
    // Since we cannot directly hook into xmlBufferGrow, we rely on KLEE exploring the path.
    // We'll add a marker after the call, but the actual vulnerable line is inside.
    // We'll use a dummy condition to guide KLEE.
    if (buf->alloc == XML_BUFFER_ALLOC_IO && buf->contentIO != NULL) {
        size_t start_buf = buf->content - buf->contentIO;
        if (start_buf > newSize) {
            klee_assert(0 && "SAILR_REACH_ASSERT");
        }
    }

    // Cleanup
    xmlBufferFree(buf);
    return 0;
}