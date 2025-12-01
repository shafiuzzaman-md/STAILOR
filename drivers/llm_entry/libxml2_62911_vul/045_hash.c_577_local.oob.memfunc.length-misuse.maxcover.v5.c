#include <klee/klee.h>
#include "hash.c"

int main() {
    xmlHashTablePtr hash;
    xmlChar key[10];
    xmlChar key2[10];
    xmlChar key3[10];
    void* payload;
    int lengths[3];

    hash = xmlHashCreate(0);
    if (hash == NULL) return 0;

    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(key2, sizeof(key2), "key2");
    klee_make_symbolic(key3, sizeof(key3), "key3");
    klee_make_symbolic(lengths, sizeof(lengths), "lengths");
    klee_make_symbolic(&payload, sizeof(payload), "payload");

    key[sizeof(key)-1] = '\0';
    key2[sizeof(key2)-1] = '\0';
    key3[sizeof(key3)-1] = '\0';

    xmlHashAddEntry3(hash, key, key2, key3, payload);

    xmlHashFree(hash, NULL);
    return 0;
}