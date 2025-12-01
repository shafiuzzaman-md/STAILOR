#include <klee/klee.h>
#include "schematron.c"

int main() {
    // Initialize parser context
    xmlSchematronParserCtxtPtr ctxt = xmlSchematronNewParserCtxt("test.xml");
    if (ctxt == NULL) {
        return 0;
    }

    // Create symbolic schematron
    xmlSchematronPtr schema = xmlSchematronNewSchematron(ctxt);
    
    // Cleanup
    if (schema != NULL) {
        xmlSchematronFree(schema);
    }
    if (ctxt != NULL) {
        xmlSchematronFreeParserCtxt(ctxt);
    }
    
    return 0;
}