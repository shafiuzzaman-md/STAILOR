#include <libxml/hash.h>
#include <libxml/parser.h>
#include <klee/klee.h>

int main(void) {
    xmlHashTablePtr hash;
    const xmlChar *name, *name2, *name3;
    void *userdata;
    xmlHashDeallocator f;
    int ret;

    /* Symbolic inputs for the hash table and keys */
    hash = xmlHashCreate(0);
    if (hash == NULL) return 0;

    klee_make_symbolic(&name, sizeof(name), "name");
    klee_make_symbolic(&name2, sizeof(name2), "name2");
    klee_make_symbolic(&name3, sizeof(name3), "name3");
    klee_make_symbolic(&userdata, sizeof(userdata), "userdata");
    klee_make_symbolic(&f, sizeof(f), "f");
    klee_make_symbolic(&ret, sizeof(ret), "ret");

    /* Insert entries to ensure the hash table is non-empty */
    xmlHashAddEntry3(hash, name, name2, name3, userdata);

    /* Call xmlHashRemoveEntry3, which internally calls xmlHashResize,
       which contains the target line 365 in hash.c */
    ret = xmlHashRemoveEntry3(hash, name, name2, name3, f);

    /* Reachability marker for the vulnerable memset at line 365 */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    xmlHashFree(hash, f);
    return 0;
}