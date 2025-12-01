#include <klee/klee.h>
#include "relaxng.h"

int main() {
    xmlRelaxNGPtr schema = NULL;
    klee_make_symbolic(&schema, sizeof(schema), "schema");
    
    xmlRelaxNGValidCtxtPtr result = xmlRelaxNGNewValidCtxt(schema);
    
    return 0;
}