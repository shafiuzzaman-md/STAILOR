#include <klee/klee.h>
#include "uri.c"

int main() {
    xmlChar *uri_str;
    xmlChar *base_str;
    int uri_len, base_len;

    klee_make_symbolic(&uri_len, sizeof(uri_len), "uri_len");
    klee_make_symbolic(&base_len, sizeof(base_len), "base_len");
    
    klee_assume(uri_len >= 0 && uri_len < 1024);
    klee_assume(base_len >= 0 && base_len < 1024);
    
    uri_str = (xmlChar *)klee_malloc(uri_len + 1);
    base_str = (xmlChar *)klee_malloc(base_len + 1);
    
    klee_make_symbolic(uri_str, uri_len + 1, "uri_str");
    klee_make_symbolic(base_str, base_len + 1, "base_str");
    
    uri_str[uri_len] = '\0';
    base_str[base_len] = '\0';

    xmlChar *result = xmlBuildRelativeURI(uri_str, base_str);
    
    if (result != NULL) {
        xmlFree(result);
    }
    
    return 0;
}