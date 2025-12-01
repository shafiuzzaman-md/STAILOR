#include <klee/klee.h>
#include "testdict.c"

int main() {
    // Initialize symbolic parameters for pool_new
    size_t num_entries;
    size_t num_keys;
    xmlChar id;
    
    klee_make_symbolic(&num_entries, sizeof(num_entries), "num_entries");
    klee_make_symbolic(&num_keys, sizeof(num_keys), "num_keys");
    klee_make_symbolic(&id, sizeof(id), "id");
    
    // Call pool_new which contains the suspicious memset
    StringPool* pool = pool_new(num_entries, num_keys, id);
    
    // Assertion to check for potential buffer overflow in memset
    // The suspicious line is: memset(ret->strings, 0, num_strings * sizeof(ret->strings[0]));
    // Check that the allocation size matches the memset size
    size_t allocated_size = pool->num_entries * pool->num_keys * sizeof(pool->strings[0]);
    size_t memset_size = pool->num_strings * sizeof(pool->strings[0]);
    
    klee_assert(allocated_size == memset_size);
    
    // Clean up
    pool_free(pool);
    
    return 0;
}