#include <klee/klee.h>
#include "testdict.c"

int main() {
    xmlDictPtr parent = xmlDictCreate();
    if (parent == NULL) {
        return 1;
    }
    
    test_subdict(parent);
    
    xmlDictFree(parent);
    return 0;
}