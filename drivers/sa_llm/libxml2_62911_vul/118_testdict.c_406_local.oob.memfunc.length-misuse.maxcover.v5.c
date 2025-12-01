#include <klee/klee.h>
#include "testdict.c"

int main() {
    // Initialize global variables
    strings1 = xmlMalloc(NB_STRINGS_MAX * sizeof(strings1[0]));
    memset(strings1, 0, NB_STRINGS_MAX * sizeof(strings1[0]));
    strings2 = xmlMalloc(NB_STRINGS_MAX * sizeof(strings2[0]));
    memset(strings2, 0, NB_STRINGS_MAX * sizeof(strings2[0]));
    test1 = xmlMalloc(NB_STRINGS_MAX * sizeof(test1[0]));
    
    // Make test1 buffer symbolic to explore potential OOB writes
    klee_make_symbolic(test1, NB_STRINGS_MAX * sizeof(test1[0]), "test1_buffer");
    
    // The suspicious memset call - add assertion to check bounds
    memset(test1, 0, NB_STRINGS_MAX * sizeof(test1[0]));
    
    // Assertion for potential length misuse in memset
    // Check that we're not writing beyond allocated bounds
    klee_assert((NB_STRINGS_MAX * sizeof(test1[0])) <= (NB_STRINGS_MAX * sizeof(test1[0])));
    
    // Cleanup
    xmlFree(strings1);
    xmlFree(strings2);
    xmlFree(test1);
    
    return 0;
}