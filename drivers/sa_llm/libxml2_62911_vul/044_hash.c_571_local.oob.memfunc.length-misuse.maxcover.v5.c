#include <klee/klee.h>
#include "hash.h"

int main() {
    xmlHashTablePtr hash = xmlHashCreate(0);
    if (hash == NULL) return -1;

    xmlChar key[10];
    klee_make_symbolic(key, sizeof(key), "key");
    key[9] = '\0';

    void* payload = NULL;

    int result = xmlHashAddEntry(hash, key, payload);

    xmlHashFree(hash, NULL);
    return 0;
}