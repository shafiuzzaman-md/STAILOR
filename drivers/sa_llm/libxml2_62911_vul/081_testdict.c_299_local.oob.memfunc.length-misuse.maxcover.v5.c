#include <klee/klee.h>
#include "testdict.c"

int main() {
    xmlDict *dict = xmlDictCreate();
    if (dict == NULL) return 1;

    int result = test_dict(dict);
    
    xmlDictFree(dict);
    return result;
}