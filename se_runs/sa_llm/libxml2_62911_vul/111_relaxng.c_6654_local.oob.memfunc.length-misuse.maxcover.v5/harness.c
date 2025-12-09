#include <libxml/xmlmemory.h>
#include <libxml/relaxng.h>
#include <string.h>
#include "klee/klee.h"

int main(void) {
    // Symbolic buffer and size for xmlRelaxNGNewMemParserCtxt
    char buffer[1024];
    int size;
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&size, sizeof(size), "size");
    // Constrain size to be within buffer bounds and non-negative for realistic scenario
    klee_assume(size >= 0);
    klee_assume(size < sizeof(buffer));

    // Call the function that leads to the target line
    xmlRelaxNGParserCtxtPtr ctxt = xmlRelaxNGNewMemParserCtxt(buffer, size);
    if (ctxt != NULL) {
        // We have reached the allocation and memset at line 6654
        // Insert reachability marker
        klee_assert(0 && "SAILR_REACH_ASSERT");
        // Clean up
        xmlRelaxNGFreeParserCtxt(ctxt);
    }

    return 0;
}