#include <libxml/tree.h>
#include <libxml/parser.h>
#include <klee/klee.h>

int main(void) {
    xmlBufferPtr buf = xmlBufferCreate();
    if (buf == NULL) {
        return 1;
    }

    // Initialize buffer with some content to ensure buf->use > 0
    xmlBufferAdd(buf, (const xmlChar*)"initial", 7);

    // Symbolic length for the string to add
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    // Constrain len to be non-negative and reasonable to avoid immediate OOM
    klee_assume(len >= 0);
    klee_assume(len < 1024); // Reasonable upper bound

    // Allocate symbolic string of length len
    char *str = (char*)malloc(len + 1);
    if (str == NULL) {
        xmlBufferFree(buf);
        return 1;
    }
    klee_make_symbolic(str, len + 1, "str");
    str[len] = '\0'; // Ensure null-terminated for safety

    // Call xmlBufferAdd with symbolic inputs
    int result = xmlBufferAdd(buf, (const xmlChar*)str, len);

    // Place reachability marker near the target line (7426)
    // The target line is inside xmlBufferAdd, so we mark after the call.
    // We also add an assertion to check for potential OOB in memmove.
    // Since the SA spec suggests no specific assertion expression, we use a generic one.
    // We assume SAILR_ASSERT is defined elsewhere.
    SAILR_ASSERT(len >= 0 && buf->use >= 0 && buf->use + len <= buf->size);

    // If the call succeeded (result == 0), we might have reached the vulnerable line.
    if (result == 0) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    free(str);
    xmlBufferFree(buf);
    return 0;
}