#include <libxml/hash.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlHashTablePtr table;
    const xmlChar *key1, *key2, *key3;
    void *payload;
    int lengths[3];
    int i;

    table = xmlHashCreate(10);
    if (table == NULL) return 0;

    payload = (void *)0xdeadbeef;

    for (i = 0; i < 3; i++) {
        klee_make_symbolic(&lengths[i], sizeof(lengths[i]), "length");
        klee_assume(lengths[i] >= 0);
        klee_assume(lengths[i] < 1024);
    }

    key1 = (const xmlChar *)xmlMalloc(lengths[0] + 1);
    if (key1 == NULL) {
        xmlHashFree(table, NULL);
        return 0;
    }
    klee_make_symbolic((void *)key1, lengths[0] + 1, "key1");

    key2 = (const xmlChar *)xmlMalloc(lengths[1] + 1);
    if (key2 == NULL) {
        xmlFree((void *)key1);
        xmlHashFree(table, NULL);
        return 0;
    }
    klee_make_symbolic((void *)key2, lengths[1] + 1, "key2");

    key3 = (const xmlChar *)xmlMalloc(lengths[2] + 1);
    if (key3 == NULL) {
        xmlFree((void *)key1);
        xmlFree((void *)key2);
        xmlHashFree(table, NULL);
        return 0;
    }
    klee_make_symbolic((void *)key3, lengths[2] + 1, "key3");

    if (xmlHashAddEntry3(table, key1, key2, key3, payload) != 0) {
        xmlFree((void *)key1);
        xmlFree((void *)key2);
        xmlFree((void *)key3);
        xmlHashFree(table, NULL);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    xmlHashRemoveEntry3(table, key1, key2, key3);

    xmlFree((void *)key1);
    xmlFree((void *)key2);
    xmlFree((void *)key3);
    xmlHashFree(table, NULL);
    return 0;
}