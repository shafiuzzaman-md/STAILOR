#include <klee/klee.h>
#include "testdict.c"

int main() {
    size_t num_entries;
    size_t num_keys;
    xmlChar id;

    klee_make_symbolic(&num_entries, sizeof(num_entries), "num_entries");
    klee_make_symbolic(&num_keys, sizeof(num_keys), "num_keys");
    klee_make_symbolic(&id, sizeof(id), "id");

    klee_assume(num_entries > 0);
    klee_assume(num_keys > 0);

    StringPool *pool = pool_new(num_entries, num_keys, id);
    
    size_t num_strings = num_entries * num_keys;
    klee_assert(num_strings * sizeof(pool->strings[0]) <= (size_t)-1);
    
    pool_free(pool);
    return 0;
}