#include <klee/klee.h>
#include "relaxng.c"

int main() {
    // Create a symbolic xmlDoc structure
    xmlDocPtr doc;
    klee_make_symbolic(&doc, sizeof(doc), "doc");
    
    // Call the entry function
    xmlRelaxNGParserCtxtPtr result = xmlRelaxNGNewDocParserCtxt(doc);
    
    // Clean up if result is not NULL
    if (result != NULL) {
        xmlRelaxNGFreeParserCtxt(result);
    }
    
    return 0;
}