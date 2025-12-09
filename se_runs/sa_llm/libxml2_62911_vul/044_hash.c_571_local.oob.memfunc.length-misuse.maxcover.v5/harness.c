#include <libxml/hash.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <string.h>
#include <klee/klee.h>

int main(void) {
    xmlHashTablePtr hash;
    const xmlChar *name1, *name2, *name3;
    void *userdata;
    xmlHashDeallocator dealloc;
    int ret;

    /* Initialize libxml2 */
    xmlInitParser();

    /* Create a hash table with a small size to increase collision probability */
    hash = xmlHashCreate(3);
    if (hash == NULL) return 0;

    /* Make symbolic inputs for keys and userdata */
    klee_make_symbolic(&name1, sizeof(name1), "name1");
    klee_make_symbolic(&name2, sizeof(name2), "name2");
    klee_make_symbolic(&name3, sizeof(name3), "name3");
    klee_make_symbolic(&userdata, sizeof(userdata), "userdata");

    /* Assume names are valid strings (non‑null, zero‑terminated) */
    klee_assume(name1 != NULL);
    klee_assume(name2 != NULL);
    klee_assume(name3 != NULL);

    /* Insert several entries to fill the table and create collisions */
    xmlHashAddEntry3(hash, name1, name2, name3, userdata);
    xmlHashAddEntry3(hash, name2, name3, name1, userdata);
    xmlHashAddEntry3(hash, name3, name1, name2, userdata);

    /* Also insert a duplicate key to ensure the removal path is taken */
    xmlHashUpdateEntry3(hash, name1, name2, name3, userdata, NULL);

    /* Now remove an entry; this should trigger the target code in xmlHashRemoveEntry3 */
    ret = xmlHashRemoveEntry3(hash, name1, name2, name3, NULL);
    if (ret == 0) {
        /* If removal succeeded, we likely traversed the collision chain.
           Place the reachability marker just before the vulnerable memmove. */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        /* The SA spec suggests no specific assertion expression, so we do not add SAILR_ASSERT. */
    }

    /* Cleanup */
    xmlHashFree(hash, NULL);
    xmlCleanupParser();
    return 0;
}