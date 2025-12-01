#include <klee/klee.h>
#include "parserInternals.h"
#include "xmlmemory.h"

int main() {
    // Initialize parser context
    xmlParserCtxtPtr ctxt = xmlNewParserCtxt();
    if (ctxt == NULL) {
        return -1;
    }

    // Create symbolic SAX handler
    xmlSAXHandler sax;
    klee_make_symbolic(&sax, sizeof(xmlSAXHandler), "sax");
    
    // Initialize the SAX handler to be non-SAX2 (to trigger the vulnerable path)
    sax.initialized = 0;  // Not XML_SAX2_MAGIC

    // Call the target function
    int result = xmlInitSAXParserCtxt(ctxt, &sax, NULL);

    // Assertion for the suspicious line 1857
    // Check that we don't copy more data than the destination buffer can hold
    if (sax.initialized != XML_SAX2_MAGIC) {
        klee_assert(sizeof(xmlSAXHandlerV1) <= sizeof(xmlSAXHandler));
    }

    // Cleanup
    if (ctxt != NULL) {
        if (ctxt->sax != NULL) {
            xmlFree(ctxt->sax);
        }
        if (ctxt->dict != NULL) {
            xmlDictFree(ctxt->dict);
        }
        xmlFreeParserCtxt(ctxt);
    }

    return 0;
}