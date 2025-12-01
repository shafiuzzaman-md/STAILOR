#include <klee/klee.h>
#include "uri.c"

int main() {
    // Initialize symbolic inputs for xmlBuildRelativeURI
    xmlChar base_buf[256];
    xmlChar uri_buf[256];
    
    klee_make_symbolic(base_buf, sizeof(base_buf), "base_buf");
    klee_make_symbolic(uri_buf, sizeof(uri_buf), "uri_buf");
    
    // Ensure null termination
    base_buf[255] = 0;
    uri_buf[255] = 0;
    
    // Create URI structures
    xmlURIPtr base_uri = xmlCreateURI();
    xmlURIPtr uri_ref = xmlCreateURI();
    
    if (base_uri && uri_ref) {
        // Set the paths in the URI structures
        base_uri->path = base_buf;
        uri_ref->path = uri_buf;
        
        // Call the target function
        xmlChar* result = xmlBuildRelativeURI(uri_ref, base_uri);
        
        // Check for potential out-of-bounds access at line 2347
        // The suspicious line uses memcpy with len-1 where len = xmlStrlen(uptr) + 1
        // We need to ensure the copy doesn't exceed buffer bounds
        if (result) {
            xmlFree(result);
        }
        
        xmlFreeURI(base_uri);
        xmlFreeURI(uri_ref);
    }
    
    return 0;
}