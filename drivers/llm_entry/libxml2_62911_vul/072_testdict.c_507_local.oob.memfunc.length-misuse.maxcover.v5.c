#include <klee/klee.h>
#include "testdict.c"

int main() {
    // Initialize random state
    rng_state[0] = 123;
    rng_state[1] = 456;
    
    // Symbolic inputs for pool_new parameters
    size_t num_entries;
    size_t num_keys;
    xmlChar id;
    
    klee_make_symbolic(&num_entries, sizeof(num_entries), "num_entries");
    klee_make_symbolic(&num_keys, sizeof(num_keys), "num_keys");
    klee_make_symbolic(&id, sizeof(id), "id");
    
    // Constrain inputs to reasonable ranges
    klee_assume(num_entries > 0 && num_entries < 1000);
    klee_assume(num_keys >= 1 && num_keys <= 3);
    
    // Call the function that contains the suspicious line
    StringPool* pool = pool_new(num_entries, num_keys, id);
    
    // Clean up
    if (pool != NULL) {
        pool_free(pool);
    }
    
    return 0;
}