#include <klee/klee.h>
#include "uri.c"

int main() {
    // Create symbolic inputs for xmlBuildRelativeURI parameters
    // We'll use two URI strings as inputs
    char uri1[256];
    char uri2[256];
    
    // Make the inputs symbolic
    klee_make_symbolic(uri1, sizeof(uri1), "uri1");
    klee_make_symbolic(uri2, sizeof(uri2), "uri2");
    
    // Ensure null termination
    uri1[255] = '\0';
    uri2[255] = '\0';
    
    // Call xmlBuildRelativeURI - the function that contains the suspicious line
    xmlChar* result = xmlBuildRelativeURI((xmlChar*)uri1, (xmlChar*)uri2);
    
    // Clean up
    if (result != NULL) {
        xmlFree(result);
    }
    
    return 0;
}