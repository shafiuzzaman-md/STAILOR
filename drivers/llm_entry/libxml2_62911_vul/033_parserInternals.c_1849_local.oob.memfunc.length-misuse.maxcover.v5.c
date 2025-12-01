#include <klee/klee.h>
#include "parserInternals.h"

int main() {
    xmlParserCtxtPtr ctxt;
    const xmlSAXHandler *sax;
    void *userData;

    // Allocate and initialize parser context
    ctxt = (xmlParserCtxtPtr)xmlMalloc(sizeof(xmlParserCtxt));
    klee_assume(ctxt != NULL);
    
    // Make sax pointer symbolic (can be NULL or point to valid handler)
    klee_make_symbolic(&sax, sizeof(sax), "sax");
    
    // Make userData symbolic
    klee_make_symbolic(&userData, sizeof(userData), "userData");
    
    // Initialize context fields that might be checked
    ctxt->dict = NULL;
    ctxt->sax = NULL;
    ctxt->inputTab = NULL;
    ctxt->nodeTab = NULL;
    ctxt->nameTab = NULL;
    
    // Call the target function
    xmlInitSAXParserCtxt(ctxt, sax, userData);
    
    // Cleanup
    if (ctxt->sax != NULL) {
        xmlFree(ctxt->sax);
    }
    if (ctxt->dict != NULL) {
        xmlDictFree(ctxt->dict);
    }
    if (ctxt->inputTab != NULL) {
        xmlFree(ctxt->inputTab);
    }
    if (ctxt->nodeTab != NULL) {
        xmlFree(ctxt->nodeTab);
    }
    if (ctxt->nameTab != NULL) {
        xmlFree(ctxt->nameTab);
    }
    xmlFree(ctxt);
    
    return 0;
}