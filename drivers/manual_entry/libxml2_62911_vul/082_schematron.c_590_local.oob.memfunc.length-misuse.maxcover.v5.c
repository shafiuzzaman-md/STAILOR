#include <klee/klee.h>
#include "schematron.h"
#include "dict.h"
#include "xmlmemory.h"

int main() {
    // Initialize symbolic parser context
    xmlSchematronParserCtxtPtr ctxt = xmlSchematronNewParserCtxt("test.xml");
    if (ctxt == NULL) {
        return 0;
    }

    // Create schematron structure - this calls the target function
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