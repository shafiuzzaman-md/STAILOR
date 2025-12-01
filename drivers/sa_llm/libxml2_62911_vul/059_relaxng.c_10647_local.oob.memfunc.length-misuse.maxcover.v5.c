#include <klee/klee.h>
#include "relaxng.c"

int main() {
    xmlRelaxNGPtr schema = NULL;
    
    // Make schema partially symbolic to explore different code paths
    klee_make_symbolic(&schema, sizeof(schema), "schema");
    
    xmlRelaxNGValidCtxtPtr ret = xmlRelaxNGNewValidCtxt(schema);
    
    // Assertion near the suspicious line - check if malloc succeeded but ret is still NULL
    // This could indicate issues with the memset operation
    if (schema != NULL) {
        klee_assert(ret != NULL);
    }
    
    if (ret != NULL) {
        xmlRelaxNGFreeValidCtxt(ret);
    }
    
    return 0;
}