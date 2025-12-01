#include <klee/klee.h>
#include "hash.h"

int main() {
    xmlHashTablePtr hash = xmlHashCreate(8);
    if (hash == NULL) return -1;

    unsigned char key_buf[32];
    unsigned char key2_buf[32];
    unsigned char key3_buf[32];
    
    klee_make_symbolic(key_buf, sizeof(key_buf), "key_buf");
    klee_make_symbolic(key2_buf, sizeof(key2_buf), "key2_buf");
    klee_make_symbolic(key3_buf, sizeof(key3_buf), "key3_buf");
    
    xmlChar* key = (xmlChar*)key_buf;
    xmlChar* key2 = (xmlChar*)key2_buf;
    xmlChar* key3 = (xmlChar*)key3_buf;
    
    key_buf[31] = '\0';
    key2_buf[31] = '\0';
    key3_buf[31] = '\0';

    xmlHashAddEntry3(hash, key, key2, key3, NULL);
    
    xmlHashEntry* entry = hash->table;
    xmlHashEntry* end = &hash->table[hash->size];
    
    klee_assert(entry >= hash->table && entry < end);
    klee_assert(next >= hash->table && next < end);
    klee_assert((char*)end - (char*)next >= 0);
    klee_assert((char*)end - (char*)next <= (char*)end - (char*)hash->table);

    int result = xmlHashRemoveEntry3(hash, key, key2, key3, NULL);
    
    xmlHashFree(hash, NULL);
    return result;
}