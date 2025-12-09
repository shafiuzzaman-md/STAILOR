#include <libxml/xmlmemory.h>
#include <libxml/dict.h>
#include <string.h>
#include <klee/klee.h>

#define NB_STRINGS_MAX 100

static const char *strings1[NB_STRINGS_MAX];
static const char *strings2[NB_STRINGS_MAX];
static const char *test1[NB_STRINGS_MAX];
static const char *test2[NB_STRINGS_MAX];

static const char *seeds1[] = {"seed1", "seed2", "seed3"};
static const char *seeds2[] = {"seedA", "seedB", "seedC"};

static void fill_string_pool(const char **pool, const char **seeds) {
    for (int i = 0; i < NB_STRINGS_MAX; i++) {
        pool[i] = seeds[i % 3];
    }
}

static int testall_dict(void) {
    xmlDictPtr dict;
    int ret = 0;

    strings1 = xmlMalloc(NB_STRINGS_MAX * sizeof(strings1[0]));
    memset(strings1, 0, NB_STRINGS_MAX * sizeof(strings1[0]));
    strings2 = xmlMalloc(NB_STRINGS_MAX * sizeof(strings2[0]));
    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(strings2, 0, NB_STRINGS_MAX * sizeof(strings2[0]));
    test1 = xmlMalloc(NB_STRINGS_MAX * sizeof(test1[0]));
    memset(test1, 0, NB_STRINGS_MAX * sizeof(test1[0]));
    test2 = xmlMalloc(NB_STRINGS_MAX * sizeof(test2[0]));
    memset(test2, 0, NB_STRINGS_MAX * sizeof(test2[0]));

    fill_string_pool(strings1, seeds1);
    fill_string_pool(strings2, seeds2);

    dict = xmlDictCreate();
    if (dict == NULL) {
        ret = 1;
        goto cleanup;
    }

    for (int i = 0; i < NB_STRINGS_MAX; i++) {
        const char *str1 = strings1[i];
        const char *str2 = strings2[i];
        if (str1 && str2) {
            xmlDictLookup(dict, str1, -1);
            xmlDictLookup(dict, str2, -1);
        }
    }

    xmlDictFree(dict);

cleanup:
    xmlFree(strings1);
    xmlFree(strings2);
    xmlFree(test1);
    xmlFree(test2);
    return ret;
}

int main(void) {
    int symbolic_size;
    klee_make_symbolic(&symbolic_size, sizeof(symbolic_size), "symbolic_size");
    klee_assume(symbolic_size > 0 && symbolic_size <= NB_STRINGS_MAX);

    return testall_dict();
}