#include <libxml/xmlmemory.h>
#include <libxml/dict.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDictPtr parent, dict;
    int NB_STRINGS_MIN;
    int i;
    const xmlChar *test2[100];  // Assume a fixed size array as in original code

    // Initialize parent dictionary
    parent = xmlDictCreate();
    if (parent == NULL) {
        return 1;
    }

    // Make NB_STRINGS_MIN symbolic to explore different bounds
    klee_make_symbolic(&NB_STRINGS_MIN, sizeof(NB_STRINGS_MIN), "NB_STRINGS_MIN");
    // Constrain NB_STRINGS_MIN to be non-negative and within a reasonable range
    klee_assume(NB_STRINGS_MIN >= 0);
    klee_assume(NB_STRINGS_MIN <= 200);  // Limit to avoid excessive loops

    dict = xmlDictCreateSub(parent);
    if (dict == NULL) {
        xmlDictFree(parent);
        return 1;
    }

    // Reachability marker for the target line
    klee_assert(0 && "SAILR_REACH_ASSERT");

    // Cast to avoid buggy warning on MSVC.
    memset((void *) test2, 0, sizeof(test2));

    // Fill in NB_STRINGS_MIN, at this point the dictionary should not grow
    // and we allocate all those doing the fast key computations
    // All the strings are based on a different seeds subset so we know
    // they are allocated in the main dictionary, not coming from the parent
    for (i = 0; i < NB_STRINGS_MIN; i++) {
        // Simulate string allocation - using dummy strings
        char buf[32];
        sprintf(buf, "string%d", i);
        xmlDictLookup(dict, (const xmlChar *)buf, -1);
    }

    // Cleanup
    xmlDictFree(dict);
    xmlDictFree(parent);

    return 0;
}