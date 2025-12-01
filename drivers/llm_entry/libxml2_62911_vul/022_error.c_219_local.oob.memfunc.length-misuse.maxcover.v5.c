#include <klee/klee.h>
#include "error.c"

// Stub xmlGenericError function to avoid linker errors
void xmlGenericError(void *ctx, const char *msg, ...) {
    // Do nothing in harness
}

// Global context variable referenced in the code
void *xmlGenericErrorContext = NULL;

int main() {
    // Create symbolic input structure
    struct _xmlParserInput input;
    
    // Initialize input fields that are used in the vulnerable function
    klee_make_symbolic(&input.base, sizeof(input.base), "input_base");
    klee_make_symbolic(&input.cur, sizeof(input.cur), "input_cur"); 
    klee_make_symbolic(&input.end, sizeof(input.end), "input_end");
    klee_make_symbolic(&input.filename, sizeof(input.filename), "input_filename");
    klee_make_symbolic(&input.line, sizeof(input.line), "input_line");
    
    // Call the entry function - using xmlParserPrintFileContext since it's exported
    // and calls the internal function containing the vulnerable line
    xmlParserPrintFileContext(&input);
    
    return 0;
}