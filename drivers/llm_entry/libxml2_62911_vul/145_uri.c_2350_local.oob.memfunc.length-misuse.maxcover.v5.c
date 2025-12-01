#include <klee/klee.h>
#include "uri.c"
#include "xmlmemory.h"

int main() {
    xmlChar *uri = (xmlChar *)"http://example.com/path";
    xmlChar *base = (xmlChar *)"http://example.com/base";
    
    xmlChar *result = xmlBuildRelativeURI(uri, base);
    
    if (result != NULL) {
        xmlFree(result);
    }
    
    return 0;
}