#include <klee/klee.h>
#include "hash.c"

int main() {
    xmlHashTablePtr hash;
    xmlChar *key, *key2, *key3;
    void *payload = NULL;
    xmlHashDeallocator dealloc = NULL;
    int update = 0;
    size_t lengths[3];

    // Initialize hash table
    hash = xmlHashCreate();
    if (hash == NULL) return 0;

    // Make keys symbolic
    klee_make_symbolic(&lengths[0], sizeof(size_t), "length0");
    klee_make_symbolic(&lengths[1], sizeof(size_t), "length1");
    klee_make_symbolic(&lengths[2], sizeof(size_t), "length2");
    
    // Constrain lengths to reasonable values
    klee_assume(lengths[0] < 100);
    klee_assume(lengths[1] < 100);
    klee_assume(lengths[2] < 100);

    key = (xmlChar *)malloc(lengths[0] + 1);
    key2 = (xmlChar *)malloc(lengths[1] + 1);
    key3 = (xmlChar *)malloc(lengths[2] + 1);
    
    if (key) klee_make_symbolic(key, lengths[0] + 1, "key");
    if (key2) klee_make_symbolic(key2, lengths[1] + 1, "key2");
    if (key3) klee_make_symbolic(key3, lengths[2] + 1, "key3");

    // Call the function that contains the suspicious line
    int result = xmlHashAddEntry3(hash, key, key2, key3, payload, dealloc, update, lengths);

    // Assertion for potential out-of-bounds access at line 510
    if (key3 != NULL && lengths[2] > 0) {
        klee_assert(lengths[2] < 100);  // Check for reasonable length
    }

    // Cleanup
    if (key) free(key);
    if (key2) free(key2);
    if (key3) free(key3);
    xmlHashFree(hash, dealloc);

    return 0;
}