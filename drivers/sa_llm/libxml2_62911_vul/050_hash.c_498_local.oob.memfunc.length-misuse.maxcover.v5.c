#include <klee/klee.h>
#include "hash.h"
#include "dict.h"

int main() {
    xmlHashTablePtr hash = xmlHashCreate(0);
    if (hash == NULL) return 0;

    unsigned key_len, key2_len;
    klee_make_symbolic(&key_len, sizeof(key_len), "key_len");
    klee_make_symbolic(&key2_len, sizeof(key2_len), "key2_len");
    klee_assume(key_len < 100);
    klee_assume(key2_len < 100);

    xmlChar key[100];
    xmlChar key2[100];
    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(key2, sizeof(key2), "key2");
    key[key_len] = '\0';
    key2[key2_len] = '\0';

    void* payload = NULL;
    xmlHashDeallocator dealloc = NULL;

    int result = xmlHashUpdateInternal(hash, key, key2, NULL, payload, dealloc, 0);
    
    klee_assert(key2_len + 1 <= 100);
    
    xmlHashFree(hash, dealloc);
    return 0;
}