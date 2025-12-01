#include <klee/klee.h>
#include "parser.h"
#include "parserInternals.h"

int main() {
    xmlParserCtxtPtr ctxt;
    xmlSAXHandlerPtr sax;
    xmlParserInputPtr input;
    
    // Allocate and initialize parser context
    ctxt = (xmlParserCtxtPtr)malloc(sizeof(xmlParserCtxt));
    klee_make_symbolic(ctxt, sizeof(xmlParserCtxt), "ctxt");
    
    // Allocate and initialize SAX handler
    sax = (xmlSAXHandlerPtr)malloc(sizeof(xmlSAXHandler));
    klee_make_symbolic(sax, sizeof(xmlSAXHandler), "sax");
    ctxt->sax = sax;
    ctxt->disableSAX = 0;
    
    // Allocate and initialize user data
    ctxt->userData = malloc(1);
    klee_make_symbolic(ctxt->userData, 1, "userData");
    
    // Allocate and initialize parser input
    input = (xmlParserInputPtr)malloc(sizeof(xmlParserInput));
    klee_make_symbolic(input, sizeof(xmlParserInput), "input");
    ctxt->input = input;
    
    // Allocate and initialize input buffer
    size_t buffer_size = 20;
    xmlChar* buffer = (xmlChar*)malloc(buffer_size);
    klee_make_symbolic(buffer, buffer_size, "buffer");
    input->base = buffer;
    input->cur = buffer + 9;  // Ensure cur is at least 9 bytes into buffer
    input->end = buffer + buffer_size;
    
    // Set parser state to trigger the CDATA section case
    ctxt->instate = XML_PARSER_CDATA_SECTION;
    
    // Initialize other required fields
    ctxt->nameNr = 1;
    ctxt->checkIndex = 0;
    
    // Initialize SAX handler callbacks
    sax->cdataBlock = (cdataBlockSAXFunc)malloc(sizeof(void*));
    klee_make_symbolic(&sax->cdataBlock, sizeof(void*), "cdataBlock");
    
    // Call the main parsing function - using xmlParseDocument as entry point
    xmlParseDocument(ctxt);
    
    // Assertion for the suspicious line 11894
    // Check that we don't read before the start of the buffer
    klee_assert(ctxt->input->cur - ctxt->input->base >= 9);
    
    // Cleanup
    free(buffer);
    free(input);
    free(sax->cdataBlock);
    free(sax);
    free(ctxt->userData);
    free(ctxt);
    
    return 0;
}