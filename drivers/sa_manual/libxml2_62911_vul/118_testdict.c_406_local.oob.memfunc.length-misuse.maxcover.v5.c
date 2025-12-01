#include <klee/klee.h>
#include "testdict.c"

int main() {
    // Initialize global variables
    NB_STRINGS_MAX = 1000;
    NB_STRINGS_NS = 100;
    
    // Allocate and initialize arrays
    strings1 = xmlMalloc(NB_STRINGS_MAX * sizeof(strings1[0]));
    memset(strings1, 0, NB_STRINGS_MAX * sizeof(strings1[0]));
    strings2 = xmlMalloc(NB_STRINGS_MAX * sizeof(strings2[0]));
    memset(strings2, 0, NB_STRINGS_MAX * sizeof(strings2[0]));
    test1 = xmlMalloc(NB_STRINGS_MAX * sizeof(test1[0]));
    
    // Symbolic initialization for memset size check
    size_t memset_size = NB_STRINGS_MAX * sizeof(test1[0]);
    klee_make_symbolic(&memset_size, sizeof(memset_size), "memset_size");
    
    // The vulnerable memset call
    memset(test1, 0, memset_size);
    
    // Assertion for potential out-of-bounds write
    klee_assert(memset_size <= (NB_STRINGS_MAX * sizeof(test1[0])));
    
    test2 = xmlMalloc(NB_STRINGS_MAX * sizeof(test2[0]));
    memset(test2, 0, NB_STRINGS_MAX * sizeof(test2[0]));

    // Initialize seeds symbolically
    unsigned char seeds1[4], seeds2[4];
    klee_make_symbolic(seeds1, sizeof(seeds1), "seeds1");
    klee_make_symbolic(seeds2, sizeof(seeds2), "seeds2");
    
    fill_string_pool(strings1, seeds1);
    fill_string_pool(strings2, seeds2);

    xmlDictPtr dict = xmlDictCreate();
    if (dict == NULL) {
        return 1;
    }
    
    test_dict(dict);
    test_subdict(dict);
    
    xmlDictFree(dict);
    clean_strings();
    xmlFree(strings1);
    xmlFree(strings2);
    xmlFree(test1);
    xmlFree(test2);
    
    return 0;
}