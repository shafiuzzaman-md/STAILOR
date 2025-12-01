#include "klee/klee.h"
#include "../../../dataset/62911/libxml2_62911_vul/dict.c"

int main() {
    char buffer[1024];
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    
    xmlDictPtr dict = xmlDictCreate();
    if (dict == NULL) return 1;
    
    const char* ret = xmlDictLookup(dict, buffer, -1);
    
    xmlDictFree(dict);
    return 0;
}