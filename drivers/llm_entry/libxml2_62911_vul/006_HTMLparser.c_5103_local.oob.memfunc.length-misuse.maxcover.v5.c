#include <klee/klee.h>
#include "HTMLparser.h"
#include "parser.h"
#include "parserInternals.h"

int main() {
    // Create a symbolic buffer for HTML input
    char buffer[1024];
    int size = 1024;
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    // Call the entry function that creates a memory parser context
    htmlParserCtxtPtr ctxt = htmlCreateMemoryParserCtxt(buffer, size);
    
    // Clean up if context was created successfully
    if (ctxt != NULL) {
        htmlFreeParserCtxt(ctxt);
    }
    
    return 0;
}