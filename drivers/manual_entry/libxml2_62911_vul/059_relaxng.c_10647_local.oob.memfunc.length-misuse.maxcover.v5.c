#include <klee/klee.h>
#include "relaxng.c"

int main() {
    xmlRelaxNGPtr schema;
    
    klee_make_symbolic(&schema, sizeof(schema), "schema");
    
    xmlRelaxNGNewValidCtxt(schema);
    
    return 0;
}