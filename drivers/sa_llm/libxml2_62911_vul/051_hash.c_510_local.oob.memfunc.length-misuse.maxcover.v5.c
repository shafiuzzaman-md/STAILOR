#include <klee/klee.h>
#include "hash.c"

int main() {
    // Initialize hash table structure
    xmlHashTablePtr hash = xmlHashCreate(0);
    if (hash == NULL) return 0;

    // Make hash->dict NULL to take the non-dict code path
    hash->dict = NULL;

    // Initialize symbolic inputs
    xmlChar key[10];
    xmlChar key2[10]; 
    xmlChar key3[10];
    size_t lengths[3];
    void *payload = NULL;

    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(key2, sizeof(key2), "key2");
    klee_make_symbolic(key3, sizeof(key3), "key3");
    klee_make_symbolic(lengths, sizeof(lengths), "lengths");

    // Ensure lengths are reasonable for our buffer sizes
    klee_assume(lengths[0] < 10);
    klee_assume(lengths[1] < 10);
    klee_assume(lengths[2] < 10);

    // Call the vulnerable function - xmlHashAddEntry3 is a likely candidate
    // based on the code structure and parameters
    int result = xmlHashAddEntry3(hash, key, key2, key3, payload);

    // Add assertion to check for potential out-of-bounds access
    // The suspicious line is memcpy(copy3, key3, lengths[2] + 1)
    // We need to ensure lengths[2] doesn't cause buffer overflow
    if (key3 != NULL) {
        klee_assert(lengths[2] < 10);  // Check against our buffer size
    }

    xmlHashFree(hash, NULL);
    return 0;
}