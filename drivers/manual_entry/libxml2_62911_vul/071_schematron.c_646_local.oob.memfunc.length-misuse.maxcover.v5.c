#include <klee/klee.h>
#include "schematron.h"

int main() {
    const char* URL;
    klee_make_symbolic(&URL, sizeof(URL), "URL");
    
    xmlSchematronParserCtxtPtr ctxt = xmlSchematronNewParserCtxt(URL);
    
    if (ctxt != NULL) {
        xmlSchematronFreeParserCtxt(ctxt);
    }
    
    return 0;
}