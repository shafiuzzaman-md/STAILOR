#include <klee/klee.h>
#include "testchar.c"

int main(void) {
    // Initialize libxml2
    LIBXML_TEST_VERSION
    
    // Call the test function that contains the suspicious line
    int result = testUTF8Chunks();
    
    // Mark result as symbolic to explore different paths
    klee_make_symbolic(&result, sizeof(result), "result");
    
    return result;
}