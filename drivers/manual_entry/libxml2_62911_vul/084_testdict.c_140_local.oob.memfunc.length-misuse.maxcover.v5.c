#include <klee/klee.h>
#include "testdict.c"

int main() {
    xmlDictPtr parent = xmlDictCreate();
    if (parent == NULL) {
        return 1;
    }
    
    klee_make_symbolic(test1, sizeof(test1), "test1");
    klee_make_symbolic(test2, sizeof(test2), "test2");
    klee_make_symbolic(strings1, sizeof(strings1), "strings1");
    klee_make_symbolic(strings2, sizeof(strings2), "strings2");
    
    int result = test_subdict(parent);
    
    xmlDictFree(parent);
    return result;
}