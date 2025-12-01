#include <klee/klee.h>
#include "hash.c"

int main() {
    xmlHashTablePtr hash;
    xmlChar key[10];
    xmlChar key2[10];
    xmlChar key3[10];
    
    klee_make_symbolic(&hash, sizeof(hash), "hash");
    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(key2, sizeof(key2), "key2");
    klee_make_symbolic(key3, sizeof(key3), "key3");
    
    xmlHashRemoveEntry3(hash, key, key2, key3, NULL);
    
    return 0;
}