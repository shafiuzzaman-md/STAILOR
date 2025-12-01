#include <klee/klee.h>
#include "parserInternals.h"

int main() {
    xmlParserCtxtPtr ctxt = (xmlParserCtxtPtr)xmlMalloc(sizeof(xmlParserCtxt));
    if (ctxt == NULL) return -1;
    
    klee_make_symbolic(ctxt, sizeof(xmlParserCtxt), "ctxt");
    
    xmlSAXHandler *sax = NULL;
    void *userData = NULL;
    
    int result = xmlInitSAXParserCtxt(ctxt, sax, userData);
    
    klee_assert(ctxt->sax != NULL);
    
    xmlFree(ctxt);
    return result;
}