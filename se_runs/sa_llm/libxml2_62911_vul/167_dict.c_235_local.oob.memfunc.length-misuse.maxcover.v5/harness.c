#include <libxml/dict.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDictPtr dict = xmlDictCreate();
    if (!dict) return 1;

    size_t prefix_len, name_len;
    klee_make_symbolic(&prefix_len, sizeof(prefix_len), "prefix_len");
    klee_make_symbolic(&name_len, sizeof(name_len), "name_len");

    klee_assume(prefix_len >= 0 && prefix_len < 1024);
    klee_assume(name_len >= 0 && name_len < 1024);

    char prefix[1024];
    char name[1024];
    klee_make_symbolic(prefix, sizeof(prefix), "prefix");
    klee_make_symbolic(name, sizeof(name), "name");

    prefix[prefix_len] = '\0';
    name[name_len] = '\0';

    const char *result = xmlDictLookup(dict, prefix, prefix_len);
    if (result) {
        result = xmlDictLookup(dict, name, name_len);
    }

    xmlDictFree(dict);

    klee_assert(0 && "SAILR_REACH_ASSERT");
    return 0;
}