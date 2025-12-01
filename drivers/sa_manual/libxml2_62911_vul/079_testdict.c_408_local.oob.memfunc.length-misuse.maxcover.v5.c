#include <klee/klee.h>
#include "testdict.c"

int main() {
    // Initialize global arrays
    strings1 = xmlMalloc(NB_STRINGS_MAX * sizeof(strings1[0]));
    memset(strings1, 0, NB_STRINGS_MAX * sizeof(strings1[0]));
    strings2 = xmlMalloc(NB_STRINGS_MAX * sizeof(strings2[0]));
    memset(strings2, 0, NB_STRINGS_MAX * sizeof(strings2[0]));
    test1 = xmlMalloc(NB_STRINGS_MAX * sizeof(test1[0]));
    memset(test1, 0, NB_STRINGS_MAX * sizeof(test1[0]));
    test2 = xmlMalloc(NB_STRINGS_MAX * sizeof(test2[0]));
    
    // Make test2 symbolic to explore potential OOB access
    klee_make_symbolic(test2, NB_STRINGS_MAX * sizeof(test2[0]), "test2");
    
    // This is the suspicious line - add assertion for bounds check
    memset(test2, 0, NB_STRINGS_MAX * sizeof(test2[0]));
    klee_assert(test2 != NULL && "Potential NULL pointer dereference");
    
    // Clean up
    xmlFree(strings1);
    xmlFree(strings2);
    xmlFree(test1);
    xmlFree(test2);
    
    return 0;
}