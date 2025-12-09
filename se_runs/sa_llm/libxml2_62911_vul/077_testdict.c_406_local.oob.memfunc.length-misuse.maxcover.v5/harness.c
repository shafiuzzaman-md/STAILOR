#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <libxml/dict.h>
#include <string.h>
#include <klee/klee.h>

#define NB_STRINGS_MAX 100

static const char *strings1[NB_STRINGS_MAX];
static const char *strings2[NB_STRINGS_MAX];
static const char *test1[NB_STRINGS_MAX];
static const char *test2[NB_STRINGS_MAX];

static const char *seeds1[] = {"seed1a", "seed1b", NULL};
static const char *seeds2[] = {"seed2a", "seed2b", NULL};

static void fill_string_pool(const char **pool, const char **seeds) {
    int i, j;
    for (i = 0; i < NB_STRINGS_MAX; i++) {
        for (j = 0; seeds[j] != NULL; j++) {
            if (i % (j + 1) == 0) {
                pool[i] = seeds[j];
                break;
            }
        }
    }
}

int main(void) {
    xmlDictPtr dict;
    int ret = 0;

    klee_make_symbolic(&ret, sizeof(ret), "ret");

    strings1[0] = (const char *)xmlMalloc(NB_STRINGS_MAX * sizeof(strings1[0]));
    memset((void *)strings1[0], 0, NB_STRINGS_MAX * sizeof(strings1[0]));
    strings2[0] = (const char *)xmlMalloc(NB_STRINGS_MAX * sizeof(strings2[0]));
    memset((void *)strings2[0], 0, NB_STRINGS_MAX * sizeof(strings2[0]));
    test1[0] = (const char *)xmlMalloc(NB_STRINGS_MAX * sizeof(test1[0]));
    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset((void *)test1[0], 0, NB_STRINGS_MAX * sizeof(test1[0]));
    test2[0] = (const char *)xmlMalloc(NB_STRINGS_MAX * sizeof(test2[0]));
    memset((void *)test2[0], 0, NB_STRINGS_MAX * sizeof(test2[0]));

    fill_string_pool(strings1, seeds1);
    fill_string_pool(strings2, seeds2);

    dict = xmlDictCreate();
    if (dict) {
        xmlDictFree(dict);
    }

    if (strings1[0]) xmlFree((void *)strings1[0]);
    if (strings2[0]) xmlFree((void *)strings2[0]);
    if (test1[0]) xmlFree((void *)test1[0]);
    if (test2[0]) xmlFree((void *)test2[0]);

    return ret;
}