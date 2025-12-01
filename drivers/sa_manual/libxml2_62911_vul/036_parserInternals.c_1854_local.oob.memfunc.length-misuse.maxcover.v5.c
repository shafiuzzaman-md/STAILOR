#include <klee/klee.h>
#include "parserInternals.h"

int main() {
    // Initialize parser context
    xmlParserCtxtPtr ctxt = xmlNewParserCtxt();
    if (ctxt == NULL) return -1;

    // Create symbolic SAX handler
    xmlSAXHandler sax;
    klee_make_symbolic(&sax, sizeof(xmlSAXHandler), "sax");
    
    // Create symbolic user data
    void* userData;
    klee_make_symbolic(&userData, sizeof(void*), "userData");

    // Call the target function
    int result = xmlInitSAXParserCtxt(ctxt, &sax, userData);

    // Assertion for the suspicious memcpy at line 1854
    // Check that sax->initialized is either XML_SAX2_MAGIC or not
    // This ensures we explore both code paths around the memcpy
    if (sax.initialized == XML_SAX2_MAGIC) {
        // If we take the memcpy path, verify the copy was safe
        klee_assert(ctxt->sax != NULL);
    }

    // Cleanup
    xmlFreeParserCtxt(ctxt);
    return result;
}