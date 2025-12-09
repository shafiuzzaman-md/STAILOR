#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <string.h>
#include <klee/klee.h>

typedef struct _StringPool {
    size_t num_entries;
    size_t num_keys;
    size_t num_strings;
    size_t index;
    int id;
    char **strings;
} StringPool;

static StringPool *StringPoolCreate(size_t num_entries, size_t num_keys, int id) {
    StringPool *ret;
    size_t num_strings;

    ret = xmlMalloc(sizeof(*ret));
    if (ret == NULL) return NULL;
    ret->num_entries = num_entries;
    ret->num_keys = num_keys;
    num_strings = num_entries * num_keys;
    ret->strings = xmlMalloc(num_strings * sizeof(ret->strings[0]));
    if (ret->strings == NULL) {
        xmlFree(ret);
        return NULL;
    }
    klee_assert(0 && "SAILR_REACH_ASSERT");
    memset(ret->strings, 0, num_strings * sizeof(ret->strings[0]));
    ret->num_strings = num_strings;
    ret->index = 0;
    ret->id = id;

    return ret;
}

int main(void) {
    size_t num_entries, num_keys;
    int id;

    klee_make_symbolic(&num_entries, sizeof(num_entries), "num_entries");
    klee_make_symbolic(&num_keys, sizeof(num_keys), "num_keys");
    klee_make_symbolic(&id, sizeof(id), "id");

    klee_assume(num_entries <= 1024);
    klee_assume(num_keys <= 1024);

    StringPool *pool = StringPoolCreate(num_entries, num_keys, id);
    if (pool != NULL) {
        xmlFree(pool->strings);
        xmlFree(pool);
    }

    return 0;
}