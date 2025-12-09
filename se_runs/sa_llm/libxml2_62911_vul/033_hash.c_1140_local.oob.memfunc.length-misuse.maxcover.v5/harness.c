#include <libxml/hash.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlHashTablePtr hash = xmlHashCreate(8);
    if (!hash) return 1;

    const char *key1 = "key1";
    const char *key2 = "key2";
    const char *key3 = "key3";
    void *payload = (void *)0x1;

    xmlHashAddEntry3(hash, (xmlChar *)key1, (xmlChar *)key1, (xmlChar *)key1, payload);
    xmlHashAddEntry3(hash, (xmlChar *)key2, (xmlChar *)key2, (xmlChar *)key2, payload);
    xmlHashAddEntry3(hash, (xmlChar *)key3, (xmlChar *)key3, (xmlChar *)key3, payload);

    int removeResult = xmlHashRemoveEntry3(hash, (xmlChar *)key2, (xmlChar *)key2, (xmlChar *)key2, NULL);
    if (removeResult == 0) {
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    xmlHashFree(hash, NULL);
    return 0;
}