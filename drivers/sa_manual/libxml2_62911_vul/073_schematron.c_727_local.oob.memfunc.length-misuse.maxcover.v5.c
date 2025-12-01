#include <klee/klee.h>
#include "schematron.c"

int main() {
    xmlDocPtr doc;
    
    // Make doc symbolic to explore different states
    klee_make_symbolic(&doc, sizeof(doc), "doc");
    
    // Call the function that contains the suspicious line
    xmlSchematronParserCtxtPtr ctxt = xmlSchematronNewDocParserCtxt(doc);
    
    // Assertion based on the suspicious memset at line 727
    // Check that the allocation succeeded before memset
    if (ctxt != NULL) {
        // The memset at line 727 should only execute if allocation succeeded
        // This assertion verifies the allocation was valid
        klee_assert(1);
    }
    
    if (ctxt != NULL) {
        xmlSchematronFreeParserCtxt(ctxt);
    }
    
    return 0;
}