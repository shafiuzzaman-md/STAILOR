#include <klee/klee.h>
#include "hash.h"

int main() {
    xmlHashTablePtr hash = xmlHashCreate(8);
    if (hash == NULL) return -1;

    char key_buf[32];
    klee_make_symbolic(key_buf, sizeof(key_buf), "key_buf");
    xmlChar* key = (xmlChar*)key_buf;

    char payload_buf[32];
    klee_make_symbolic(payload_buf, sizeof(payload_buf), "payload_buf");
    void* payload = (void*)payload_buf;

    int result = xmlHashAddEntry(hash, key, payload);
    
    xmlHashFree(hash, NULL);
    return 0;
}