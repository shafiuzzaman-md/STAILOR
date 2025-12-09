#include <libxml/xmlmemory.h>
#include <libxml/dict.h>
#include <string.h>
#include <klee/klee.h>

extern char *strings1[];
extern char *strings2[];
extern char *test1[];
extern char *test2[];

#define NB_STRINGS_MAX 1000

static void fill_string_pool(char *pool[], unsigned int seed) {
    for (int i = 0; i < NB_STRINGS_MAX; i++) {
        pool[i] = (char *)xmlMalloc(10);
        if (pool[i]) {
            snprintf(pool[i], 10, "str%d", i + seed);
        }
    }
}

int main(void) {
    unsigned int seeds1, seeds2;
    klee_make_symbolic(&seeds1, sizeof(seeds1), "seeds1");
    klee_make_symbolic(&seeds2, sizeof(seeds2), "seeds2");

    strings1 = xmlMalloc(NB_STRINGS_MAX * sizeof(strings1[0]));
    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(strings1, 0, NB_STRINGS_MAX * sizeof(strings1[0]));

    strings2 = xmlMalloc(NB_STRINGS_MAX * sizeof(strings2[0]));
    memset(strings2, 0, NB_STRINGS_MAX * sizeof(strings2[0]));
    test1 = xmlMalloc(NB_STRINGS_MAX * sizeof(test1[0]));
    memset(test1, 0, NB_STRINGS_MAX * sizeof(test1[0]));
    test2 = xmlMalloc(NB_STRINGS_MAX * sizeof(test2[0]));
    memset(test2, 0, NB_STRINGS_MAX * sizeof(test2[0]));

    fill_string_pool(strings1, seeds1);
    fill_string_pool(strings2, seeds2);

    xmlDictPtr dict = xmlDictCreate();
    if (!dict) return 1;

    for (int i = 0; i < NB_STRINGS_MAX; i++) {
        if (strings1[i] && strings2[i]) {
            xmlDictLookup(dict, strings1[i], -1);
            xmlDictLookup(dict, strings2[i], -1);
        }
    }

    xmlDictFree(dict);
    xmlFree(strings1);
    xmlFree(strings2);
    xmlFree(test1);
    xmlFree(test2);

    return 0;
}