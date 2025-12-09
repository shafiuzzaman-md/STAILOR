#include <libxml/xmlmemory.h>
#include <libxml/dict.h>
#include <string.h>
#include <klee/klee.h>

/* External declaration from testdict.c */
extern xmlChar *test1[];
extern const char *strings1[];
extern int NB_STRINGS_MIN;

int test_dict(xmlDict *dict);

int main(void) {
    xmlDict *dict;
    int NB_STRINGS_MIN_sym;

    /* Make NB_STRINGS_MIN symbolic to influence the loop bound */
    klee_make_symbolic(&NB_STRINGS_MIN_sym, sizeof(NB_STRINGS_MIN_sym), "NB_STRINGS_MIN_sym");
    /* Constrain to plausible range; the SA hints it's >=0 */
    klee_assume(NB_STRINGS_MIN_sym >= 0);
    klee_assume(NB_STRINGS_MIN_sym < 1000); /* reasonable upper bound */

    /* Override the global variable */
    NB_STRINGS_MIN = NB_STRINGS_MIN_sym;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a dictionary */
    dict = xmlDictCreate();
    if (dict == NULL) {
        return 1;
    }

    /* Ensure test1 array is non‑NULL (it's an external global) */
    klee_assume(test1 != NULL);

    /* Reachability marker: we are about to call test_dict which contains the target line */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Call the function under test */
    test_dict(dict);

    /* Cleanup */
    xmlDictFree(dict);
    xmlCleanupParser();
    return 0;
}