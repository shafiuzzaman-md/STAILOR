#include <klee/klee.h>
#include "hash.h"

int main() {
    xmlHashTablePtr hash;
    xmlChar key[10];
    xmlChar key2[10];
    xmlChar key3[10];
    void* payload;
    int lengths[3] = {9, 9, 9};

    hash = xmlHashCreate(0);
    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(key2, sizeof(key2), "key2");
    klee_make_symbolic(key3, sizeof(key3), "key3");
    klee_make_symbolic(&payload, sizeof(payload), "payload");
    klee_make_symbolic(lengths, sizeof(lengths), "lengths");

    key[9] = '\0';
    key2[9] = '\0';
    key3[9] = '\0';

    xmlHashUpdateInternal(hash, key, key2, key3, payload, NULL, 0);

    xmlHashFree(hash, NULL);
    return 0;
}