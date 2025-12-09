#include <libxml/dict.h>
#include <libxml/parser.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlDictPtr dict = xmlDictCreate();
    if (!dict) return 1;

    size_t namelen;
    klee_make_symbolic(&namelen, sizeof(namelen), "namelen");
    klee_assume(namelen >= 0);
    klee_assume(namelen < 1024);

    char name[1024];
    klee_make_symbolic(name, sizeof(name), "name");

    const xmlChar* result = xmlDictLookup(dict, (const xmlChar*)name, namelen);
    if (result) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlDictFree(dict);
    return 0;
}