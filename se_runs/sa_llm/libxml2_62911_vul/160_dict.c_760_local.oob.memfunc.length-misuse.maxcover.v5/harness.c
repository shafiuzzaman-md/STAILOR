#include "klee/klee.h"
#include <libxml/dict.h>
#include <string.h>

int main(void) {
    xmlDictPtr dict = xmlDictCreate();
    if (dict == NULL) return 1;

    size_t size;
    klee_make_symbolic(&size, sizeof(size), "size");
    klee_assume(size > 0 && size < 1024);

    const char *name;
    name = (const char *)malloc(size + 1);
    if (name == NULL) {
        xmlDictFree(dict);
        return 1;
    }
    klee_make_symbolic((void *)name, size + 1, "name");
    ((char *)name)[size] = '\0';

    const xmlChar *ret = xmlDictLookup(dict, (const xmlChar *)name, -1);
    if (ret == NULL) {
        free((void *)name);
        xmlDictFree(dict);
        return 1;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");

    free((void *)name);
    xmlDictFree(dict);
    return 0;
}