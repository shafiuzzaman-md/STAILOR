#include <klee/klee.h>
#include "parser.h"

int main() {
    xmlParserCtxtPtr ctxt;
    xmlAttrHashBucket *table;
    unsigned size = klee_range(0, 256, "size");
    unsigned newSize = klee_range(0, 512, "newSize");
    
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_assume(ctxt != NULL);
    
    klee_make_symbolic(&table, sizeof(table), "table");
    klee_assume(table != NULL);
    
    klee_assume(newSize > size);
    
    ctxt->attrHash = table;
    ctxt->attrHashMax = newSize;
    
    memset(&table[size], 0, (newSize - size) * sizeof(table[0]));
    
    klee_assert(size + (newSize - size) <= newSize);
    
    return 0;
}