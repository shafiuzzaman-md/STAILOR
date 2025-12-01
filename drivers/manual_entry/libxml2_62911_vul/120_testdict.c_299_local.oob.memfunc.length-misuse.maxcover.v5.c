#include <klee/klee.h>
#include "testdict.c"

int main() {
    xmlDictPtr dict = xmlDictCreate();
    
    if (dict == NULL) {
        return 1;
    }
    
    test_dict(dict);
    
    xmlDictFree(dict);
    return 0;
}