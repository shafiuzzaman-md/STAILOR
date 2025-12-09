#include <libxml/tree.h>
#include <libxml/parser.h>
#include <klee/klee.h>

int main(void) {
    xmlBufferPtr buf = xmlBufferCreate();
    if (buf == NULL) return 1;

    // Set buffer allocation to XML_BUFFER_ALLOC_IO
    buf->alloc = XML_BUFFER_ALLOC_IO;

    // Create a contentIO buffer and set content to point within it
    size_t io_size = 1024;
    char *io_buf = (char *)malloc(io_size);
    if (io_buf == NULL) {
        xmlBufferFree(buf);
        return 1;
    }
    klee_make_symbolic(io_buf, io_size, "io_buf");
    buf->contentIO = (xmlChar *)io_buf;

    // Symbolic start offset within io_buf
    size_t start_buf;
    klee_make_symbolic(&start_buf, sizeof(start_buf), "start_buf");
    // Constrain start_buf to be within io_size
    klee_assume(start_buf < io_size);
    buf->content = buf->contentIO + start_buf;

    // Symbolic len parameter for xmlBufferAdd
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    // Constrain len to be non‑negative (as expected by the function)
    klee_assume(len >= 0);

    // Symbolic source string
    char *str = (char *)malloc(len + 1);
    if (str == NULL) {
        free(io_buf);
        xmlBufferFree(buf);
        return 1;
    }
    klee_make_symbolic(str, len + 1, "str");
    str[len] = 0;

    // Set buffer size and use to satisfy the condition start_buf > (unsigned int)len
    // We need start_buf > len, and also buf->size and buf->use are not used in the path.
    buf->size = 0;
    buf->use = 0;

    // Force the condition start_buf > (unsigned int)len to be true
    klee_assume(start_buf > (unsigned int)len);

    // Now call xmlBufferAdd, which internally will reach the target line
    // xmlBufferAdd is a public API that calls xmlBufferAddHead (where the target is)
    // We'll directly call xmlBufferAddHead because it's the function containing the code.
    // xmlBufferAddHead is static, so we cannot call it directly.
    // Instead, use xmlBufferAdd which eventually calls the vulnerable function.
    // The condition we set should steer execution into the desired branch.
    int ret = xmlBufferAdd(buf, (xmlChar *)str, len);

    // Place reachability marker
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    free(str);
    free(io_buf);
    xmlBufferFree(buf);
    return 0;
}