#include <libxml/tree.h>
#include <libxml/parser.h>
#include <klee/klee.h>

int main(void) {
    xmlBufferPtr buf = xmlBufferCreate();
    if (buf == NULL) return 0;

    // Symbolic variables for buffer fields
    size_t size, use, start_buf;
    klee_make_symbolic(&size, sizeof(size), "size");
    klee_make_symbolic(&use, sizeof(use), "use");
    klee_make_symbolic(&start_buf, sizeof(start_buf), "start_buf");

    // Constrain to plausible values
    klee_assume(size <= 1024);  // reasonable upper bound
    klee_assume(use <= size);
    klee_assume(start_buf <= 1024);

    // Set buffer allocation to IO
    buf->alloc = XML_BUFFER_ALLOC_IO;

    // Allocate contentIO and content
    buf->contentIO = (xmlChar*)malloc(size + start_buf + 1);
    if (buf->contentIO == NULL) {
        xmlBufferFree(buf);
        return 0;
    }
    buf->content = buf->contentIO + start_buf;
    buf->size = size;
    buf->use = use;

    // Ensure content[0] to content[use-1] are accessible
    for (size_t i = 0; i < use; i++) {
        buf->content[i] = 'A';
    }
    buf->content[use] = 0;

    // Trigger the condition
    if ((buf->alloc == XML_BUFFER_ALLOC_IO) && (buf->contentIO != NULL)) {
        size_t computed_start = buf->content - buf->contentIO;
        if (computed_start >= buf->size) {
            klee_assert(0 && "SAILR_REACH_ASSERT");
            // The vulnerable memmove
            memmove(buf->contentIO, &buf->content[0], buf->use);
        }
    }

    // Cleanup
    free(buf->contentIO);
    xmlBufferFree(buf);
    return 0;
}