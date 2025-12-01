#include <klee/klee.h>
#include "testdict.c"

int main() {
    // Initialize global variables
    strings1 = xmlMalloc(NB_STRINGS_MAX * sizeof(strings1[0]));
    memset(strings1, 0, NB_STRINGS_MAX * sizeof(strings1[0]));
    strings2 = xmlMalloc(NB_STRINGS_MAX * sizeof(strings2[0]));
    
    // Make the size symbolic to test potential overflow
    unsigned sym_size;
    klee_make_symbolic(&sym_size, sizeof(sym_size), "sym_size");
    klee_assume(sym_size <= NB_STRINGS_MAX * sizeof(strings2[0]));
    
    // Call the vulnerable memset with symbolic size
    memset(strings2, 0, sym_size);
    
    // Assertion to check for potential buffer overflow
    klee_assert(sym_size <= NB_STRINGS_MAX * sizeof(strings2[0]));
    
    // Continue with the rest of the test
    test1 = xmlMalloc(NB_STRINGS_MAX * sizeof(test1[0]));
    memset(test1, 0, NB_STRINGS_MAX * sizeof(test1[0]));
    test2 = xmlMalloc(NB_STRINGS_MAX * sizeof(test2[0]));
    memset(test2, 0, NB_STRINGS_MAX * sizeof(test2[0]));

    fill_string_pool(strings1, seeds1);
    fill_string_pool(strings2, seeds2);

    xmlDictPtr dict = xmlDictCreate();
    if (dict == NULL) {
        return 1;
    }
    
    int result = test_dict(dict);
    result |= test_subdict(dict);
    
    xmlDictFree(dict);
    clean_strings();
    xmlFree(strings1);
    xmlFree(strings2);
    xmlFree(test1);
    xmlFree(test2);
    
    return result;
}