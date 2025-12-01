#include <klee/klee.h>
#include "hash.c"
#include "dict.c"

int main() {
    xmlHashTablePtr hash = xmlHashCreate(0);
    if (hash == NULL) return 0;

    unsigned key2_len;
    klee_make_symbolic(&key2_len, sizeof(key2_len), "key2_len");
    klee_assume(key2_len < 100);

    xmlChar key2[100];
    klee_make_symbolic(key2, sizeof(key2), "key2");
    key2[key2_len] = '\0';

    xmlChar key[10] = "test";
    
    size_t lengths[3] = {4, key2_len, 0};
    
    int result = xmlHashUpdateInternal(hash, key, key2, NULL, NULL, NULL, 0);
    
    klee_assert(lengths[1] < 100);
    
    xmlHashFree(hash, NULL);
    return 0;
}