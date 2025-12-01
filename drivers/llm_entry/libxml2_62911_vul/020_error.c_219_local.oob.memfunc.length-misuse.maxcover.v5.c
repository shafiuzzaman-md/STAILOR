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
    // Make base, cur, and end pointers symbolic within a buffer
    char buffer[256];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    // Set up the input structure pointers to point within our buffer
    input.base = (const xmlChar*)buffer;
    input.cur = (const xmlChar*)buffer;
    input.end = (const xmlChar*)(buffer + sizeof(buffer));
    
    // Make filename symbolic (can be NULL or point to a string)
    char filename_buf[64];
    klee_make_symbolic(filename_buf, sizeof(filename_buf), "filename_buf");
    // Allow filename to be NULL or point to our buffer
    if (klee_int("filename_choice")) {
        input.filename = (const char*)filename_buf;
    } else {
        input.filename = NULL;
    }
    
    // Make line number symbolic
    klee_make_symbolic(&input.line, sizeof(input.line), "line");
    
    // Call the entry function - using xmlParserPrintFileContext since it's public
    // and calls the internal function containing the vulnerable line
    xmlParserPrintFileContext(&input);
    
    return 0;
}