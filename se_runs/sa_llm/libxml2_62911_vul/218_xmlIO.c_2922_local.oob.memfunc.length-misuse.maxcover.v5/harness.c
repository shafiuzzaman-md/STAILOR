#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlStringIOCtxt {
    const char *str;
} xmlStringIOCtxt;

/* The target function from xmlIO.c:2922 */
int xmlStringRead(void *vctxt, char *buf, int size) {
    xmlStringIOCtxt *ctxt = (xmlStringIOCtxt *)vctxt;
    const char *zero;
    size_t len;

    /* This is the suspicious memchr call at line 2922 */
    zero = memchr(ctxt->str, 0, size);
    len = zero ? zero - ctxt->str : size;

    /* Vulnerability assertion: ensure size doesn't exceed buffer bounds */
    SAILR_ASSERT(size >= 0 && (size_t)size <= 1024); /* Assume reasonable buffer bound */

    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    memcpy(buf, ctxt->str, len);
    ctxt->str += len;
    return len;
}

/* Minimal stub for entrypoint */
void *xmlFileOpen(const char *filename, const char *encoding) {
    /* Return a dummy context to allow execution */
    return malloc(sizeof(xmlStringIOCtxt));
}

int main(void) {
    /* Create and initialize context */
    xmlStringIOCtxt *ctxt = malloc(sizeof(xmlStringIOCtxt));
    if (!ctxt) return 1;

    /* Make ctxt->str symbolic with bounded length */
    char str_buffer[1024];
    klee_make_symbolic(str_buffer, sizeof(str_buffer), "str_buffer");
    klee_assume(str_buffer[sizeof(str_buffer)-1] == 0); /* Ensure null-terminated somewhere */
    ctxt->str = str_buffer;

    /* Make size symbolic but bounded */
    int size;
    klee_make_symbolic(&size, sizeof(size), "size");
    klee_assume(size >= 0);
    klee_assume(size <= 1024); /* Reasonable bound for buffer */

    /* Make buffer symbolic */
    char buf[1024];
    klee_make_symbolic(buf, sizeof(buf), "buf");

    /* Call the target function */
    xmlStringRead(ctxt, buf, size);

    free(ctxt);
    return 0;
}