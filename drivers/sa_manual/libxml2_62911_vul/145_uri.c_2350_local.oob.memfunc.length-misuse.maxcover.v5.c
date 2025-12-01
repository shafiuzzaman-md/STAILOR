#include <klee/klee.h>
#include "uri.c"

int main() {
    // Initialize symbolic inputs for xmlBuildRelativeURI
    xmlChar uri_buf[256];
    xmlChar base_buf[256];
    
    klee_make_symbolic(uri_buf, sizeof(uri_buf), "uri_buf");
    klee_make_symbolic(base_buf, sizeof(base_buf), "base_buf");
    
    // Ensure null termination
    uri_buf[255] = 0;
    base_buf[255] = 0;
    
    xmlChar* result = xmlBuildRelativeURI(uri_buf, base_buf);
    
    // Check for potential out-of-bounds access at line 2350
    // The memcpy at line 2350 uses 'len' which comes from xmlStrlen(uptr) + 1
    // We need to ensure the copy doesn't exceed allocated bounds
    if (result != NULL) {
        xmlFree(result);
    }
    
    return 0;
}