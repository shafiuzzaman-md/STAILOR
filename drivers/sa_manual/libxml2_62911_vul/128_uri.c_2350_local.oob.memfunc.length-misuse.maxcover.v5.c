#include <klee/klee.h>
#include "uri.c"

int main() {
    xmlChar *uri;
    xmlChar *base;
    size_t uri_len, base_len;
    
    klee_make_symbolic(&uri_len, sizeof(uri_len), "uri_len");
    klee_make_symbolic(&base_len, sizeof(base_len), "base_len");
    
    klee_assume(uri_len > 0 && uri_len < 100);
    klee_assume(base_len > 0 && base_len < 100);
    
    uri = (xmlChar *)malloc(uri_len + 1);
    base = (xmlChar *)malloc(base_len + 1);
    
    klee_make_symbolic(uri, uri_len + 1, "uri");
    klee_make_symbolic(base, base_len + 1, "base");
    
    uri[uri_len] = '\0';
    base[base_len] = '\0';
    
    xmlChar *result = xmlBuildRelativeURI(uri, base);
    
    if (result != NULL) {
        xmlFree(result);
    }
    
    free(uri);
    free(base);
    
    return 0;
}