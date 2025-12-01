#include <klee/klee.h>
#include "schematron.h"
#include "dict.h"
#include "xpath.h"

int main() {
    // Initialize parser context
    xmlSchematronParserCtxtPtr ctxt = xmlSchematronNewParserCtxt("test.xml");
    if (ctxt == NULL) return 1;

    // Create a new schematron - this is where the suspicious memset occurs
    xmlSchematronPtr schema = xmlSchematronNewSchematron(ctxt);
    
    // Assertion to check for potential memory issues
    // The memset at line 590 should not overflow the allocated structure
    if (schema != NULL) {
        // Check that the schema was properly allocated and initialized
        klee_assert(schema->dict == ctxt->dict);
    }

    // Cleanup
    if (schema != NULL) {
        xmlSchematronFree(schema);
    }
    if (ctxt != NULL) {
        xmlSchematronFreeParserCtxt(ctxt);
    }

    return 0;
}