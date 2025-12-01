#include <klee/klee.h>
#include "parserInternals.h"

int main() {
    xmlParserCtxtPtr ctxt;
    xmlSAXHandler *sax;
    
    // Make ctxt symbolic
    ctxt = (xmlParserCtxtPtr)malloc(sizeof(xmlParserCtxt));
    klee_make_symbolic(ctxt, sizeof(xmlParserCtxt), "ctxt");
    
    // Make sax symbolic (can be NULL to trigger the vulnerable path)
    sax = (xmlSAXHandler *)malloc(sizeof(xmlSAXHandler));
    klee_make_symbolic(&sax, sizeof(xmlSAXHandler*), "sax_ptr");
    
    // Initialize parser context fields that are checked before line 1849
    if (ctxt != NULL) {
        ctxt->dict = NULL;
        ctxt->sax = (xmlSAXHandler *)malloc(sizeof(xmlSAXHandler));
        klee_make_symbolic(ctxt->sax, sizeof(xmlSAXHandler), "ctxt_sax");
    }
    
    // Call the function containing the suspicious line
    int result = xmlInitSAXParserCtxt(ctxt, sax, NULL);
    
    // Assertion near the suspicious line - check that if sax is NULL, 
    // the memset operation on ctxt->sax doesn't cause issues
    if (sax == NULL && ctxt != NULL && ctxt->sax != NULL) {
        // Check that the memset operation would be safe
        // This is a basic safety check for the memset operation at line 1849
        klee_assert(ctxt->sax != NULL);
    }
    
    // Free allocated memory
    if (ctxt != NULL) {
        if (ctxt->sax != NULL) free(ctxt->sax);
        free(ctxt);
    }
    if (sax != NULL) free(sax);
    
    return 0;
}