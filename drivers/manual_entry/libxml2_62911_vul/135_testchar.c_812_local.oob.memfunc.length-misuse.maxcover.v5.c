#include <klee/klee.h>
#include "testchar.c"

int main(void) {
    LIBXML_TEST_VERSION
    xmlSetStructuredErrorFunc(NULL, errorHandler);
    
    int result = testUTF8Chunks();
    
    xmlCleanupParser();
    return result;
}