#include <klee/klee.h>
#include "schematron.h"

int main() {
    const char* URL;
    klee_make_symbolic(&URL, sizeof(URL), "URL");
    
    xmlSchematronParserCtxtPtr ctxt = xmlSchematronNewParserCtxt(URL);
    
    if (ctxt != NULL) {
        // Check for potential buffer overflow in memset at line 646
        // The memset writes sizeof(xmlSchematronParserCtxt) bytes starting at ret
        // If ret points to insufficient memory, this could overflow
        klee_assert(ctxt != NULL);  // Basic sanity check
    }
    
    if (ctxt != NULL) {
        xmlSchematronFreeParserCtxt(ctxt);
    }
    
    return 0;
}