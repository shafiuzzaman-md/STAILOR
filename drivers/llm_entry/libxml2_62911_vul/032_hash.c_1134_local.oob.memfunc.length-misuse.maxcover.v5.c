#include <klee/klee.h>
#include "hash.c"

int main() {
    xmlHashTablePtr hash;
    xmlChar *key;
    xmlChar *key2;
    xmlChar *key3;
    xmlHashDeallocator dealloc = NULL;

    klee_make_symbolic(&hash, sizeof(hash), "hash");
    klee_make_symbolic(&key, sizeof(key), "key");
    klee_make_symbolic(&key2, sizeof(key2), "key2");
    klee_make_symbolic(&key3, sizeof(key3), "key3");

    xmlHashRemoveEntry3(hash, key, key2, key3, dealloc);
    return 0;
}