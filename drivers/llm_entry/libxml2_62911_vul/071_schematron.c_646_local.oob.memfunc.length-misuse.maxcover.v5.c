#include <klee/klee.h>
#include "schematron.h"

int main() {
    // Create symbolic input for URL parameter
    char URL[256];
    klee_make_symbolic(URL, sizeof(URL), "URL");
    
    // Ensure null termination for string safety
    URL[255] = '\0';
    
    // Call the entry function
    xmlSchematronParserCtxtPtr result = xmlSchematronNewParserCtxt(URL);
    
    // Clean up if allocation succeeded
    if (result != NULL) {
        xmlSchematronFreeParserCtxt(result);
    }
    
    return 0;
}