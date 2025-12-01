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
    
    // Make NB_STRINGS_MAX symbolic to test boundary conditions
    klee_make_symbolic(&NB_STRINGS_MAX, sizeof(NB_STRINGS_MAX), "NB_STRINGS_MAX");
    
    // Add assertion for potential out-of-bounds access
    klee_assume(NB_STRINGS_MAX > 0 && NB_STRINGS_MAX < 10000); // Reasonable bounds
    
    // The suspicious memset call - check if allocation size matches memset size
    klee_assert(test2 != NULL);
    klee_assert(NB_STRINGS_MAX * sizeof(test2[0]) <= xmlMallocUsableSize(test2));
    
    memset(test2, 0, NB_STRINGS_MAX * sizeof(test2[0]));

    // Continue with the test
    fill_string_pool(strings1, seeds1);
    fill_string_pool(strings2, seeds2);
    
    xmlDictPtr dict = xmlDictCreate();
    if (dict == NULL) {
        return 1;
    }
    
    int result = test_dict(dict);
    
    xmlDictFree(dict);
    clean_strings();
    xmlFree(strings1);
    xmlFree(strings2);
    xmlFree(test1);
    xmlFree(test2);
    
    return result;
}