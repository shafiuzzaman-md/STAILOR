#include <libxml/xmlmemory.h>
#include <libxml/dict.h>
#include <klee/klee.h>

int main(void) {
    xmlDictPtr dict;
    int size;
    const xmlChar *ret;

    /* Create a dictionary */
    dict = xmlDictCreate();
    if (dict == NULL) {
        return 0;
    }

    /* Make size symbolic to explore different paths */
    klee_make_symbolic(&size, sizeof(size), "size");

    /* Ensure size is non‑negative for the purpose of reaching the target */
    klee_assume(size >= 0);

    /* Call xmlDictLookup, which internally calls xmlDictGrow and reaches the memset */
    ret = xmlDictLookup(dict, (const xmlChar *)"key", -1);

    /* Place reachability marker: we want to hit line 588 */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Clean up */
    xmlDictFree(dict);
    return 0;
}