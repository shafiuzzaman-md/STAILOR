#include <klee/klee.h>
#include "testchar.c"

int main(void) {
    // Initialize libxml2
    LIBXML_TEST_VERSION
    
    // Set up error handler
    xmlSetStructuredErrorFunc(NULL, errorHandler);
    
    // Call the test function that contains the suspicious line
    int result = testUTF8Chunks();
    
    // Cleanup
    xmlCleanupParser();
    
    return result;
}