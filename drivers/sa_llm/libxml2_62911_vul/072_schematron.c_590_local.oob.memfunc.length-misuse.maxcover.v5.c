#include <klee/klee.h>
#include "schematron.c"

int main() {
    // Initialize parser context
    xmlSchematronParserCtxtPtr ctxt = xmlSchematronNewParserCtxt("test.xml");
    if (ctxt == NULL) {
        return 0;
    }

    // Create a new schematron - this calls the suspicious memset at line 590
    xmlSchematronPtr schema = xmlSchematronNewSchematron(ctxt);
    
    // Assertion for potential vulnerability: ensure the allocated structure is properly initialized
    // Check that the schema pointer is valid after memset
    if (schema != NULL) {
        klee_assert(schema->dict == ctxt->dict);  // Check dict field was properly set after memset
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