#include <klee/klee.h>
#include "dict.c"

int main() {
    xmlDictPtr dict;
    const xmlChar *name;
    int len;
    
    klee_make_symbolic(&dict, sizeof(dict), "dict");
    klee_make_symbolic(&name, sizeof(name), "name");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    xmlDictLookup(dict, name, len);
    
    klee_assert(len >= 0 && len < 1024);
    
    return 0;
}