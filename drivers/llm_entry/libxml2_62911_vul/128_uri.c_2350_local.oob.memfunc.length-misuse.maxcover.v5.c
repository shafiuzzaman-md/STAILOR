#include <klee/klee.h>
#include "uri.c"

int main() {
    // Create symbolic inputs for xmlBuildRelativeURI
    xmlChar base_uri[256];
    xmlChar uri[256];
    
    klee_make_symbolic(base_uri, sizeof(base_uri), "base_uri");
    klee_make_symbolic(uri, sizeof(uri), "uri");
    
    // Ensure null termination
    base_uri[255] = '\0';
    uri[255] = '\0';
    
    // Call the function that contains the suspicious line
    xmlChar* result = xmlBuildRelativeURI(uri, base_uri);
    
    // Clean up
    if (result != NULL) {
        xmlFree(result);
    }
    
    return 0;
}