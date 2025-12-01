#include <klee/klee.h>
#include "parser.h"
#include "parserInternals.h"

int main() {
    xmlParserCtxtPtr ctxt;
    xmlParserInputPtr input;
    
    // Initialize parser context symbolically
    ctxt = xmlCreateMemoryParserCtxt("", 0);
    if (ctxt == NULL) return -1;
    
    // Make input buffer symbolic
    size_t buf_size = 100;
    char* buffer = (char*)malloc(buf_size);
    klee_make_symbolic(buffer, buf_size, "buffer");
    
    // Initialize parser input
    input = xmlNewInputStream(ctxt);
    if (input == NULL) {
        xmlFreeParserCtxt(ctxt);
        return -1;
    }
    
    input->base = buffer;
    input->cur = buffer;
    input->end = buffer + buf_size;
    ctxt->input = input;
    
    // Make checkIndex symbolic
    klee_make_symbolic(&ctxt->checkIndex, sizeof(ctxt->checkIndex), "checkIndex");
    
    // Call the target function
    int result = xmlParseLookupChar(ctxt, 'a');
    
    // Assertion for potential OOB in memchr call
    const xmlChar* cur;
    if (ctxt->checkIndex == 0) {
        cur = ctxt->input->cur + 1;
    } else {
        cur = ctxt->input->cur + ctxt->checkIndex;
    }
    
    // Check if memchr could access out of bounds
    klee_assert(cur >= ctxt->input->base && 
                cur <= ctxt->input->end && 
                (ctxt->input->end - cur) <= (ctxt->input->end - ctxt->input->base));
    
    xmlFreeParserCtxt(ctxt);
    free(buffer);
    return 0;
}