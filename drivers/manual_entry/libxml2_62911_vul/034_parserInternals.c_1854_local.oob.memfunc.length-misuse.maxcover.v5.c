#include <klee/klee.h>
#include "parserInternals.h"

int main() {
    xmlParserCtxtPtr ctxt;
    xmlSAXHandler sax;
    
    // Make parser context symbolic
    ctxt = (xmlParserCtxtPtr)malloc(sizeof(xmlParserCtxt));
    klee_make_symbolic(ctxt, sizeof(xmlParserCtxt), "ctxt");
    
    // Make SAX handler symbolic
    klee_make_symbolic(&sax, sizeof(xmlSAXHandler), "sax");
    
    // Initialize sax magic value to explore both code paths
    klee_make_symbolic(&sax.initialized, sizeof(int), "sax_initialized");
    
    // Call the target function
    xmlInitSAXParserCtxt(ctxt, &sax, NULL);
    
    free(ctxt);
    return 0;
}