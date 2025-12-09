#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/xmlmemory.h>
#include <libxml/hash.h>
#include <libxml/parser.h>
#include "klee/klee.h"

int main(void) {
    xmlHashTablePtr table;
    const xmlChar *name1, *name2, *name3;
    void *userdata;
    xmlHashDeallocator f;
    int lengths[3];
    xmlChar *key1, *key2, *key3;

    table = xmlHashCreate(10);
    if (table == NULL) return 0;

    klee_make_symbolic(lengths, sizeof(lengths), "lengths");
    for (int i = 0; i < 3; i++) {
        klee_assume(lengths[i] >= 0);
        klee_assume(lengths[i] < 1024);
    }

    key1 = (xmlChar *)malloc(lengths[0] + 1);
    if (key1) {
        klee_make_symbolic(key1, lengths[0] + 1, "key1");
        key1[lengths[0]] = 0;
    }

    key2 = (xmlChar *)malloc(lengths[1] + 1);
    if (key2) {
        klee_make_symbolic(key2, lengths[1] + 1, "key2");
        key2[lengths[1]] = 0;
    }

    key3 = (xmlChar *)malloc(lengths[2] + 1);
    if (key3) {
        klee_make_symbolic(key3, lengths[2] + 1, "key3");
        key3[lengths[2]] = 0;
    }

    xmlHashAddEntry3(table, key1, key2, key3, NULL);

    klee_assert(0 && "SAILR_REACH_ASSERT");
    xmlHashRemoveEntry3(table, key1, key2, key3, NULL);

    if (key1) free(key1);
    if (key2) free(key2);
    if (key3) free(key3);
    xmlHashFree(table, NULL);
    return 0;
}