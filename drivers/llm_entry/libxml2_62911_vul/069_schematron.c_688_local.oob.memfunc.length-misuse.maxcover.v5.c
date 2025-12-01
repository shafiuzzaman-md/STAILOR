#include <klee/klee.h>
#include "schematron.c"

int main() {
    // Create symbolic buffer and size for xmlSchematronNewMemParserCtxt
    char buffer[1024];
    int size;
    
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&size, sizeof(size), "size");
    
    // Call the vulnerable function
    xmlSchematronParserCtxtPtr result = xmlSchematronNewMemParserCtxt(buffer, size);
    
    // Clean up if successful
    if (result != NULL) {
        xmlSchematronFreeParserCtxt(result);
    }
    
    return 0;
}