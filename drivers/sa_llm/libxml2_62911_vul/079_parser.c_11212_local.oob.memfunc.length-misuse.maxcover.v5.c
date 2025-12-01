#include <klee/klee.h>
#include "parser.h"
#include "parserInternals.h"

int main() {
    // Initialize parser context
    xmlParserCtxtPtr ctxt = xmlNewParserCtxt();
    if (ctxt == NULL) return -1;
    
    // Initialize input buffer
    ctxt->input = xmlNewInputStream(ctxt);
    if (ctxt->input == NULL) {
        xmlFreeParserCtxt(ctxt);
        return -1;
    }
    
    // Make input buffer symbolic
    #define BUFFER_SIZE 256
    unsigned char buffer[BUFFER_SIZE];
    klee_make_symbolic(buffer, BUFFER_SIZE, "buffer");
    
    // Set up input buffer pointers
    ctxt->input->base = buffer;
    ctxt->input->cur = buffer;
    ctxt->input->end = buffer + BUFFER_SIZE;
    
    // Initialize checkIndex
    ctxt->checkIndex = 0;
    
    // Symbolic character to search for
    int search_char;
    klee_make_symbolic(&search_char, sizeof(search_char), "search_char");
    
    // Call the target function
    int result = xmlParseLookupChar(ctxt, search_char);
    
    // Assertion for potential OOB in memchr call
    // Check that the calculated length doesn't exceed buffer bounds
    const xmlChar *cur;
    if (ctxt->checkIndex == 0) {
        cur = ctxt->input->cur + 1;
    } else {
        cur = ctxt->input->cur + ctxt->checkIndex;
    }
    
    size_t length = ctxt->input->end - cur;
    klee_assert(cur >= ctxt->input->base && 
                cur + length <= ctxt->input->base + BUFFER_SIZE);
    
    // Cleanup
    xmlFreeParserCtxt(ctxt);
    
    return 0;
}