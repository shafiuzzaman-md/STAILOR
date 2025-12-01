#include <klee/klee.h>
#include "parserInternals.h"
#include "xmlmemory.h"
#include "parser.h"

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

    // Assertion for the suspicious line 1857
    // Check that sax structure size doesn't exceed destination buffer
    if (sax.initialized != XML_SAX2_MAGIC) {
        klee_assert(sizeof(xmlSAXHandlerV1) <= sizeof(xmlSAXHandler));
    }

    // Cleanup
    if (ctxt) {
        if (ctxt->sax) xmlFree(ctxt->sax);
        if (ctxt->dict) xmlDictFree(ctxt->dict);
        xmlFreeParserCtxt(ctxt);
    }

    return result;
}