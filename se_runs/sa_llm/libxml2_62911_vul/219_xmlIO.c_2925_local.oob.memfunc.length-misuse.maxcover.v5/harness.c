#include "klee/klee.h"
#include <libxml/parser.h>
#include <libxml/xmlIO.h>
#include <string.h>
#include <stdlib.h>

int main(void) {
    // Create a symbolic buffer for the string context
    char input_buf[1024];
    klee_make_symbolic(input_buf, sizeof(input_buf), "input_buf");
    // Ensure null-terminated for safety, but keep symbolic content
    input_buf[sizeof(input_buf)-1] = 0;

    // Create a symbolic size parameter
    int size;
    klee_make_symbolic(&size, sizeof(size), "size");
    // Constrain size to be reasonable for our buffer
    klee_assume(size >= 0);
    klee_assume(size <= sizeof(input_buf));

    // Create a buffer for memcpy destination
    char buf[1024];
    klee_make_symbolic(buf, sizeof(buf), "buf");

    // Create an xmlStringIOCtxt structure
    xmlStringIOCtxt* ctxt = (xmlStringIOCtxt*)xmlMalloc(sizeof(xmlStringIOCtxt));
    if (!ctxt) return 0;

    // Initialize the context
    ctxt->str = (xmlChar*)input_buf;
    ctxt->cur = ctxt->str;
    ctxt->base = ctxt->str;
    ctxt->end = ctxt->str + sizeof(input_buf);

    // Call the target function
    int result = xmlStringRead(ctxt, buf, size);

    // Place reachability marker
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cleanup
    xmlFree(ctxt);
    return 0;
}