#include <libxml/parser.h>
#include <libxml/dict.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDictPtr dict = xmlDictCreate();
    if (!dict) return 0;

    const char *name;
    int len;
    char name_buf[100];
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0 && len < 100);
    klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
    name_buf[len] = '\0';
    name = name_buf;

    const xmlChar *ret = xmlDictLookup(dict, (const xmlChar *)name, len);
    if (ret) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlDictFree(dict);
    return 0;
}