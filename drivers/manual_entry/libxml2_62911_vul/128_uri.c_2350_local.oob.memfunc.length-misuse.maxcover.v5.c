#include <klee/klee.h>
#include "uri.c"

int main() {
    // Create symbolic inputs for xmlBuildRelativeURI function
    // Based on the vulnerability context, we need two URI strings
    char base_uri[256];
    char ref_uri[256];
    
    // Make the inputs symbolic
    klee_make_symbolic(base_uri, sizeof(base_uri), "base_uri");
    klee_make_symbolic(ref_uri, sizeof(ref_uri), "ref_uri");
    
    // Ensure null termination
    base_uri[255] = '\0';
    ref_uri[255] = '\0';
    
    // Call the vulnerable function - xmlBuildRelativeURI
    xmlChar* result = xmlBuildRelativeURI((xmlChar*)ref_uri, (xmlChar*)base_uri);
    
    // Clean up
    if (result != NULL) {
        xmlFree(result);
    }
    
    return 0;
}