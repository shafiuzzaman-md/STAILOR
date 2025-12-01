#include <klee/klee.h>
#include "hash.c"

int main() {
    xmlHashTablePtr hash;
    xmlChar *key, *key2, *key3;
    void *payload = NULL;
    int update;
    size_t key_len, key2_len, key3_len;

    klee_make_symbolic(&hash, sizeof(hash), "hash");
    klee_make_symbolic(&key_len, sizeof(key_len), "key_len");
    klee_make_symbolic(&key2_len, sizeof(key2_len), "key2_len");
    klee_make_symbolic(&key3_len, sizeof(key3_len), "key3_len");
    klee_make_symbolic(&update, sizeof(update), "update");

    key = (xmlChar *)malloc(key_len + 1);
    if (key) {
        klee_make_symbolic(key, key_len + 1, "key");
        key[key_len] = '\0';
    }

    key2 = (xmlChar *)malloc(key2_len + 1);
    if (key2) {
        klee_make_symbolic(key2, key2_len + 1, "key2");
        key2[key2_len] = '\0';
    } else {
        key2 = NULL;
    }

    key3 = (xmlChar *)malloc(key3_len + 1);
    if (key3) {
        klee_make_symbolic(key3, key3_len + 1, "key3");
        key3[key3_len] = '\0';
    } else {
        key3 = NULL;
    }

    xmlHashUpdateInternal(hash, key, key2, key3, payload, NULL, update);

    if (key) free(key);
    if (key2) free(key2);
    if (key3) free(key3);

    return 0;
}