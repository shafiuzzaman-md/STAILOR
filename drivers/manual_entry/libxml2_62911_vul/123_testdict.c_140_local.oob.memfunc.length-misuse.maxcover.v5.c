#include <klee/klee.h>
#include "testdict.c"

int main() {
    xmlDictPtr parent = xmlDictCreate();
    
    klee_make_symbolic(&parent, sizeof(parent), "parent");
    
    int result = test_subdict(parent);
    
    if (parent != NULL) {
        xmlDictFree(parent);
    }
    
    return result;
}