#include <klee/klee.h>
#include "testdict.c"

int main() {
    size_t num_entries;
    size_t num_keys;
    xmlChar id;

    klee_make_symbolic(&num_entries, sizeof(num_entries), "num_entries");
    klee_make_symbolic(&num_keys, sizeof(num_keys), "num_keys");
    klee_make_symbolic(&id, sizeof(id), "id");

    StringPool* pool = pool_new(num_entries, num_keys, id);
    
    klee_assert(pool->strings != NULL);
    klee_assert(pool->num_strings == num_entries * num_keys);
    
    pool_free(pool);
    return 0;
}