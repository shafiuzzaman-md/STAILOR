#include <klee/klee.h>
#include "relaxng.c"

int main() {
    xmlRelaxNGPtr schema = NULL;
    klee_make_symbolic(&schema, sizeof(schema), "schema");
    
    xmlRelaxNGValidCtxtPtr result = xmlRelaxNGNewValidCtxt(schema);
    
    return 0;
}