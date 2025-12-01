#include <klee/klee.h>
#include "uri.c"

int main() {
    // Initialize symbolic inputs for xmlBuildRelativeURI
    xmlChar* URI;
    xmlChar* base;
    int URI_len, base_len;
    
    klee_make_symbolic(&URI_len, sizeof(URI_len), "URI_len");
    klee_make_symbolic(&base_len, sizeof(base_len), "base_len");
    
    // Constrain lengths to reasonable values
    klee_assume(URI_len >= 0 && URI_len < 1024);
    klee_assume(base_len >= 0 && base_len < 1024);
    
    URI = (xmlChar*)malloc((URI_len + 1) * sizeof(xmlChar));
    base = (xmlChar*)malloc((base_len + 1) * sizeof(xmlChar));
    
    klee_make_symbolic(URI, (URI_len + 1) * sizeof(xmlChar), "URI");
    klee_make_symbolic(base, (base_len + 1) * sizeof(xmlChar), "base");
    
    // Null-terminate the strings
    if (URI_len > 0) URI[URI_len] = '\0';
    if (base_len > 0) base[base_len] = '\0';
    
    // Call the function that contains the suspicious line
    xmlChar* result = xmlBuildRelativeURI(URI, base);
    
    // Check for potential out-of-bounds access at line 2347
    // The suspicious memcpy uses len-1 as size, where len = xmlStrlen(uptr) + 1
    // We need to ensure len-1 doesn't cause buffer overflow
    
    // Free allocated memory
    if (result != NULL) xmlFree(result);
    free(URI);
    free(base);
    
    return 0;
}