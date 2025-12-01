#include <klee/klee.h>
#include "testdict.c"

int main() {
    // Initialize global variables
    strings1 = xmlMalloc(NB_STRINGS_MAX * sizeof(strings1[0]));
    memset(strings1, 0, NB_STRINGS_MAX * sizeof(strings1[0]));
    strings2 = xmlMalloc(NB_STRINGS_MAX * sizeof(strings2[0]));
    
    // Make strings2 symbolic to explore different allocation scenarios
    klee_make_symbolic(strings2, NB_STRINGS_MAX * sizeof(strings2[0]), "strings2");
    
    // The suspicious memset at line 404
    memset(strings2, 0, NB_STRINGS_MAX * sizeof(strings2[0]));
    
    // Assertion to check for potential out-of-bounds access
    // Check that we're not writing beyond allocated bounds
    klee_assert(NB_STRINGS_MAX * sizeof(strings2[0]) <= xmlMallocSize(strings2));
    
    test1 = xmlMalloc(NB_STRINGS_MAX * sizeof(test1[0]));
    memset(test1, 0, NB_STRINGS_MAX * sizeof(test1[0]));
    test2 = xmlMalloc(NB_STRINGS_MAX * sizeof(test2[0]));
    memset(test2, 0, NB_STRINGS_MAX * sizeof(test2[0]));

    // Call the test function
    testall_dict();
    
    return 0;
}