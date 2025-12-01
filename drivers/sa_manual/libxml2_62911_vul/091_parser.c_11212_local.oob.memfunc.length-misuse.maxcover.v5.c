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
    
    // Create symbolic input buffer
    #define BUFFER_SIZE 256
    char input_buffer[BUFFER_SIZE];
    klee_make_symbolic(input_buffer, BUFFER_SIZE, "input_buffer");
    
    // Set up input buffer pointers
    ctxt->input->base = (xmlChar*)input_buffer;
    ctxt->input->cur = (xmlChar*)input_buffer;
    ctxt->input->end = (xmlChar*)(input_buffer + BUFFER_SIZE);
    
    // Initialize checkIndex
    ctxt->checkIndex = 0;
    
    // Symbolic character to search for
    int search_char;
    klee_make_symbolic(&search_char, sizeof(search_char), "search_char");
    
    // Call the target function
    int result = xmlParseLookupChar(ctxt, search_char);
    
    // Vulnerability assertion: check for potential out-of-bounds access
    // The suspicious line is line 11212: memchr(cur, c, ctxt->input->end - cur)
    // We need to ensure the length parameter doesn't cause OOB access
    const xmlChar* cur = ctxt->input->cur;
    if (ctxt->checkIndex == 0) {
        cur = ctxt->input->cur + 1;
    } else {
        cur = ctxt->input->cur + ctxt->checkIndex;
    }
    
    // Assert that the calculated length doesn't exceed buffer bounds
    size_t length = ctxt->input->end - cur;
    klee_assert(length <= BUFFER_SIZE && cur >= ctxt->input->base && 
                cur <= ctxt->input->end);
    
    // Cleanup
    xmlFreeParserCtxt(ctxt);
    
    return 0;
}