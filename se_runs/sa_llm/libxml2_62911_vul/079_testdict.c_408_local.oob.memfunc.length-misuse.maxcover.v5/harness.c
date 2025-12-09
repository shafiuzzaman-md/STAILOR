#include <libxml/xmlmemory.h>
#include <libxml/dict.h>
#include <string.h>
#include <klee/klee.h>

#define NB_STRINGS_MAX 100

extern void fill_string_pool(const char **pool, const char *seed);
extern void print_strings(void);

int main(void) {
    const char *strings1[NB_STRINGS_MAX];
    const char *strings2[NB_STRINGS_MAX];
    const char *test1[NB_STRINGS_MAX];
    const char *test2[NB_STRINGS_MAX];
    xmlDictPtr dict;

    char seeds1[256];
    char seeds2[256];

    klee_make_symbolic(seeds1, sizeof(seeds1), "seeds1");
    klee_make_symbolic(seeds2, sizeof(seeds2), "seeds2");

    strings1[0] = (const char *)xmlMalloc(NB_STRINGS_MAX * sizeof(strings1[0]));
    klee_assume(strings1[0] != NULL);
    memset(strings1[0], 0, NB_STRINGS_MAX * sizeof(strings1[0]));

    strings2[0] = (const char *)xmlMalloc(NB_STRINGS_MAX * sizeof(strings2[0]));
    klee_assume(strings2[0] != NULL);
    memset(strings2[0], 0, NB_STRINGS_MAX * sizeof(strings2[0]));

    test1[0] = (const char *)xmlMalloc(NB_STRINGS_MAX * sizeof(test1[0]));
    klee_assume(test1[0] != NULL);
    memset(test1[0], 0, NB_STRINGS_MAX * sizeof(test1[0]));

    test2[0] = (const char *)xmlMalloc(NB_STRINGS_MAX * sizeof(test2[0]));
    klee_assume(test2[0] != NULL);
    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(test2[0], 0, NB_STRINGS_MAX * sizeof(test2[0]));

    fill_string_pool(strings1, seeds1);
    fill_string_pool(strings2, seeds2);

    dict = xmlDictCreate();
    if (dict != NULL) {
        xmlDictFree(dict);
    }

    xmlFree((void *)strings1[0]);
    xmlFree((void *)strings2[0]);
    xmlFree((void *)test1[0]);
    xmlFree((void *)test2[0]);

    return 0;
}