#include <klee/klee.h>
#include "testchar.c"

int main(void) {
    LIBXML_TEST_VERSION
    xmlSetStructuredErrorFunc(NULL, errorHandler);
    
    int ret = testUTF8Chunks();
    
    xmlCleanupParser();
    return ret;
}