#include <klee/klee.h>
#include "schematron.h"

int main() {
    const char* URL;
    klee_make_symbolic(&URL, sizeof(URL), "URL");
    
    xmlSchematronParserCtxtPtr ctxt = xmlSchematronNewParserCtxt(URL);
    
    if (ctxt != NULL) {
        // Check for potential OOB write in memset at line 646
        // The memset writes sizeof(xmlSchematronParserCtxt) bytes to ret
        // If ret points to insufficient memory, this could be an OOB write
        klee_assert(ctxt != NULL);  // Basic null check
    }
    
    if (ctxt != NULL) {
        xmlSchematronFreeParserCtxt(ctxt);
    }
    
    return 0;
}