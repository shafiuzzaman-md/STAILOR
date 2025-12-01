#include <klee/klee.h>
#include "testdict.c"

int main() {
    // Initialize global arrays used in the test
    for (int i = 0; i < NB_STRINGS_MAX; i++) {
        strings1[i] = NULL;
        strings2[i] = NULL;
        test1[i] = NULL;
        test2[i] = NULL;
    }
    
    // Generate test strings
    generate_strings();
    
    // Create parent dictionary
    xmlDictPtr parent = xmlDictCreate();
    if (parent == NULL) {
        return 1;
    }
    
    // Lookup strings in parent dictionary
    for (int i = 0; i < NB_STRINGS_MAX; i++) {
        test1[i] = xmlDictLookup(parent, strings1[i], -1);
    }
    
    // Call the test_subdict function which contains the suspicious line
    int result = test_subdict(parent);
    
    // Cleanup
    xmlDictFree(parent);
    clean_strings();
    
    return result;
}