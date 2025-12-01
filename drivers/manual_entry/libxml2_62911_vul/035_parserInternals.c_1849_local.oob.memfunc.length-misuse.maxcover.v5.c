#include <klee/klee.h>
#include "parserInternals.h"

int main() {
    xmlParserCtxtPtr ctxt;
    xmlSAXHandler sax;
    void* userData;
    
    // Make parser context symbolic
    ctxt = (xmlParserCtxtPtr)malloc(sizeof(xmlParserCtxt));
    klee_make_symbolic(ctxt, sizeof(xmlParserCtxt), "ctxt");
    
    // Make SAX handler symbolic
    klee_make_symbolic(&sax, sizeof(xmlSAXHandler), "sax");
    
    // Make user data symbolic (simple pointer)
    userData = malloc(64);
    klee_make_symbolic(userData, 64, "userData");
    
    // Call the target function
    xmlInitSAXParserCtxt(ctxt, &sax, userData);
    
    // Cleanup
    free(ctxt);
    free(userData);
    
    return 0;
}