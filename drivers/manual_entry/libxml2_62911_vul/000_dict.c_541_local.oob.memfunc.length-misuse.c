#include <klee/klee.h>
#include "dict.h"

int main() {
    char buffer[1024];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    xmlDictPtr dict = xmlDictCreate();
    if (dict == NULL) return 1;
    
    const char* ret = xmlDictLookup(dict, buffer, -1);
    
    xmlDictFree(dict);
    return 0;
}