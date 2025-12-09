#include <libxml/parser.h>
#include <libxml/dict.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDictPtr dict;
    const xmlChar *ret;
    xmlChar name[100];
    int len;

    dict = xmlDictCreate();
    if (dict == NULL) return 1;

    klee_make_symbolic(name, sizeof(name), "name");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 100);

    ret = xmlDictLookup(dict, name, len);
    if (ret != NULL) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlDictFree(dict);
    return 0;
}