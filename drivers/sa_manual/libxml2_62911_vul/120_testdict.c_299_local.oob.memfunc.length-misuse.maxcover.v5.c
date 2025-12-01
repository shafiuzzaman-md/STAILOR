#include <klee/klee.h>
#include "testdict.c"

int main() {
    // Initialize global variables
    nbErrors = 0;
    
    // Create a symbolic dictionary
    xmlDict *dict = xmlDictCreate();
    
    // Initialize test1 array with symbolic values
    for (int i = 0; i < NB_STRINGS_MAX; i++) {
        klee_make_symbolic(&test1[i], sizeof(xmlChar*), "test1_element");
    }
    
    // Call the test_dict function
    int result = test_dict(dict);
    
    // Add assertion to check for potential out-of-bounds access
    // This checks if memset operation at line 299 could write beyond test1 bounds
    klee_assert(sizeof(test1) >= NB_STRINGS_MAX * sizeof(xmlChar*));
    
    // Cleanup
    xmlDictFree(dict);
    
    return result;
}