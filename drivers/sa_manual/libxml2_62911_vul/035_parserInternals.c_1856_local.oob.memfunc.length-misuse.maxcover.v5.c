#include <klee/klee.h>
#include "parserInternals.h"
#include "parser.h"
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

    // Assertion for the suspicious line 1856
    // Check that the memset operation doesn't write beyond bounds
    klee_assert(ctxt->sax != NULL);

    xmlFreeParserCtxt(ctxt);
    return result;
}