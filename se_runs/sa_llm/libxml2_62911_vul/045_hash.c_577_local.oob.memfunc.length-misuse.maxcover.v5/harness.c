#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libxml/hash.h>
#include <libxml/xmlmemory.h>
#include <klee/klee.h>

int main(void) {
    xmlHashTablePtr hash;
    const xmlChar *key1, *key2, *key3;
    void *payload;
    int key1_len, key2_len, key3_len;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a hash table */
    hash = xmlHashCreate(10);
    if (hash == NULL) {
        return 1;
    }

    /* Make symbolic keys and lengths */
    key1_len = 10;
    key2_len = 10;
    key3_len = 10;
    key1 = (const xmlChar *)malloc(key1_len + 1);
    key2 = (const xmlChar *)malloc(key2_len + 1);
    key3 = (const xmlChar *)malloc(key3_len + 1);
    payload = malloc(1);

    klee_make_symbolic((void *)key1, key1_len + 1, "key1");
    klee_make_symbolic((void *)key2, key2_len + 1, "key2");
    klee_make_symbolic((void *)key3, key3_len + 1, "key3");
    klee_make_symbolic(&key1_len, sizeof(key1_len), "key1_len");
    klee_make_symbolic(&key2_len, sizeof(key2_len), "key2_len");
    klee_make_symbolic(&key3_len, sizeof(key3_len), "key3_len");

    /* Ensure null termination for safety */
    ((char *)key1)[key1_len] = 0;
    ((char *)key2)[key2_len] = 0;
    ((char *)key3)[key3_len] = 0;

    /* Insert a few entries to create collisions and fill the table */
    xmlHashAddEntry3(hash, key1, key2, key3, payload);

    /* Now try to add another entry with same keys to trigger the memmove path */
    /* This should cause the hash table to attempt to rearrange entries */
    xmlHashAddEntry3(hash, key1, key2, key3, payload);

    /* Reachability marker for the target line */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    xmlHashFree(hash, NULL);
    free((void *)key1);
    free((void *)key2);
    free((void *)key3);
    free(payload);
    xmlCleanupParser();

    return 0;
}