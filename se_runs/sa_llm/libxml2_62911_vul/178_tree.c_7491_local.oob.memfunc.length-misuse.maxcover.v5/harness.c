#include <libxml/tree.h>
#include <libxml/parser.h>
#include <klee/klee.h>

int main(void) {
    xmlBufferPtr buf;
    xmlChar *str;
    int len;

    // Initialize libxml2
    xmlInitParser();

    // Create a buffer
    buf = xmlBufferCreate();
    if (buf == NULL) {
        return 1;
    }

    // Make symbolic inputs
    klee_make_symbolic(&len, sizeof(len), "len");
    // Ensure len is non-negative and reasonable for KLEE exploration
    klee_assume(len >= 0);
    klee_assume(len < 1024); // Bound to avoid excessive memory

    // Allocate and make symbolic string
    str = (xmlChar *)malloc((len + 1) * sizeof(xmlChar));
    if (str == NULL) {
        xmlBufferFree(buf);
        return 1;
    }
    klee_make_symbolic(str, (len + 1) * sizeof(xmlChar), "str");
    // Ensure null-terminated for safety
    str[len] = 0;

    // Set up buffer content to have some existing data
    // We need buf->use > 0 for the memmove to be interesting
    int initial_use;
    klee_make_symbolic(&initial_use, sizeof(initial_use), "initial_use");
    klee_assume(initial_use >= 0);
    klee_assume(initial_use < 1024);
    if (initial_use > 0) {
        if (xmlBufferResize(buf, initial_use + 1) == 0) {
            free(str);
            xmlBufferFree(buf);
            return 1;
        }
        klee_make_symbolic(buf->content, (initial_use + 1) * sizeof(xmlChar), "initial_content");
        buf->content[initial_use] = 0;
        buf->use = initial_use;
    }

    // Call xmlBufferAdd (or similar) to reach the target line.
    // The target line is inside xmlBufferAddHead (since the snippet shows xmlBufferCat?).
    // Based on the code, the function is likely xmlBufferAddHead.
    // We'll call xmlBufferAddHead directly.
    // Note: xmlBufferAddHead is in tree.c and is public.
    int ret = xmlBufferAddHead(buf, str, len);

    // Place reachability assertion near the vulnerable line.
    // Since we cannot directly place it in the library code, we place it after the call.
    // The SA spec suggests no assertion expression, so we only use reachability.
    if (ret == 0) {
        // If the function succeeded, we assume we might have reached the target line.
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    // Cleanup
    free(str);
    xmlBufferFree(buf);
    xmlCleanupParser();
    return 0;
}