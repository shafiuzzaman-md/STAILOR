#include "klee/klee.h"
#include <libxml/hash.h>
#include <libxml/xmlmemory.h>
#include <string.h>

int main(void) {
    xmlHashTablePtr hash = xmlHashCreate(8);
    if (!hash) return 0;

    char key1[10], key2[10], key3[10];
    klee_make_symbolic(key1, sizeof(key1), "key1");
    klee_make_symbolic(key2, sizeof(key2), "key2");
    klee_make_symbolic(key3, sizeof(key3), "key3");
    key1[sizeof(key1)-1] = '\0';
    key2[sizeof(key2)-1] = '\0';
    key3[sizeof(key3)-1] = '\0';

    void *data = (void*)0x1234;

    xmlHashAddEntry3(hash, (const xmlChar*)key1, (const xmlChar*)key2, (const xmlChar*)key3, data);

    klee_assert(0 && "SAILR_REACH_ASSERT");
    xmlHashRemoveEntry3(hash, (const xmlChar*)key1, (const xmlChar*)key2, (const xmlChar*)key3, NULL);

    xmlHashFree(hash, NULL);
    return 0;
}