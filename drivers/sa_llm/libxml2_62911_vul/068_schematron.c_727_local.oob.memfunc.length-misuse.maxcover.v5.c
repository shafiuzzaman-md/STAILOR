#include <klee/klee.h>
#include "schematron.c"

int main() {
    // Create a symbolic document pointer
    xmlDocPtr doc;
    klee_make_symbolic(&doc, sizeof(doc), "doc");
    
    // Call the vulnerable function
    xmlSchematronParserCtxtPtr ctxt = xmlSchematronNewDocParserCtxt(doc);
    
    // Assertion for potential null pointer dereference in memset
    if (ctxt != NULL) {
        klee_assert(ctxt->doc != NULL);  // Check if doc field is properly set
    }
    
    return 0;
}