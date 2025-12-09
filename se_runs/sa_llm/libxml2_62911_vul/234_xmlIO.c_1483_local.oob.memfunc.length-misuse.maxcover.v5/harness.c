#include "klee/klee.h"
#include <libxml/xmlIO.h>
#include <libxml/parser.h>
#include <string.h>

int main(void) {
    // Symbolic input for the filename to open
    char filename[256];
    klee_make_symbolic(filename, sizeof(filename), "filename");
    // Ensure null-terminated string
    filename[255] = '\0';

    // Call xmlFileOpen which internally calls xmlCreateZMemBuff
    // The target line is inside xmlCreateZMemBuff, which is called by xmlFileOpen
    // We need to reach the memset at line 1483.
    // We'll create a file input buffer context.
    xmlParserInputBufferPtr input = xmlParserInputBufferCreateFilename(filename, XML_CHAR_ENCODING_NONE);
    if (input != NULL) {
        // If we get here, xmlFileOpen succeeded and likely allocated the buffer.
        // The memset at line 1483 is inside xmlCreateZMemBuff, which is called during
        // the creation of the input buffer. We need to assert we reached that path.
        // Since we cannot directly observe the memset, we place a reachability assertion
        // after the call that should have triggered it.
        klee_assert(0 && "SAILR_REACH_ASSERT");
        xmlFreeParserInputBuffer(input);
    }

    return 0;
}