#include <klee/klee.h>
#include "hash.c"

int main() {
    xmlHashTablePtr hash;
    xmlChar key[10];
    void* payload;
    
    klee_make_symbolic(&hash, sizeof(hash), "hash");
    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(&payload, sizeof(payload), "payload");
    
    xmlHashAddEntry(hash, key, payload);
    
    return 0;
}