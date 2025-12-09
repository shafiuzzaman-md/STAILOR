#include <libxml/xmlmemory.h>
#include <libxml/list.h>
#include <klee/klee.h>

int main(void) {
    // Create a symbolic integer to influence xmlListCreate
    int symbolic_size;
    klee_make_symbolic(&symbolic_size, sizeof(symbolic_size), "symbolic_size");
    klee_assume(symbolic_size >= 0);
    klee_assume(symbolic_size <= 1024); // Reasonable bound

    // Call xmlListCreate, which internally calls xmlListInsert
    // The target line 197 is inside xmlListCreate
    xmlListPtr list = xmlListCreate(NULL, NULL);
    
    // If list creation succeeds, we have reached the memset at line 197
    if (list != NULL) {
        // Place reachability marker
        klee_assert(0 && "SAILR_REACH_ASSERT");
        // Clean up
        xmlListDelete(list);
    }

    return 0;
}