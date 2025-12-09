#include <libxml/hash.h>
#include <libxml/dict.h>
#include <libxml/xmlmemory.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlHashTablePtr hash;
    const xmlChar *key, *key2, *key3;
    void *userdata;
    xmlHashDeallocator f;
    int lengths[3];
    int ret;

    hash = xmlHashCreate(8);
    if (hash == NULL) return 0;

    key = (const xmlChar *)"key1";
    key2 = (const xmlChar *)"key2";
    key3 = (const xmlChar *)"key3";
    userdata = NULL;
    f = NULL;

    klee_make_symbolic(lengths, sizeof(lengths), "lengths");
    for (int i = 0; i < 3; i++) {
        klee_assume(lengths[i] >= 0);
        klee_assume(lengths[i] < 1024);
    }

    ret = xmlHashAddEntry3(hash, key, key2, key3, userdata);
    if (ret != 0) {
        xmlHashFree(hash, f);
        return 0;
    }

    klee_assert(0 && "SAILR_REACH_ASSERT");
    ret = xmlHashRemoveEntry3(hash, key, key2, key3, f);

    xmlHashFree(hash, f);
    return 0;
}