#include <klee/klee.h>
#include "dict.h"

int main() {
    xmlDictPtr dict;
    const xmlChar *name;
    int size;
    
    klee_make_symbolic(&dict, sizeof(dict), "dict");
    klee_make_symbolic(&name, sizeof(name), "name");
    klee_make_symbolic(&size, sizeof(size), "size");
    
    xmlDictLookup(dict, name, size);
    
    return 0;
}