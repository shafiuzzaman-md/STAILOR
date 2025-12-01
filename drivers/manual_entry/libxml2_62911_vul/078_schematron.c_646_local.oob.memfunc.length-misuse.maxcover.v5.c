#include <klee/klee.h>
#include "schematron.h"

int main() {
    // Test xmlSchematronNewParserCtxt - the function containing the suspicious line
    const char* URL;
    klee_make_symbolic(&URL, sizeof(URL), "URL");
    
    xmlSchematronParserCtxtPtr ctxt = xmlSchematronNewParserCtxt(URL);
    
    if (ctxt != NULL) {
        xmlSchematronFreeParserCtxt(ctxt);
    }
    
    return 0;
}