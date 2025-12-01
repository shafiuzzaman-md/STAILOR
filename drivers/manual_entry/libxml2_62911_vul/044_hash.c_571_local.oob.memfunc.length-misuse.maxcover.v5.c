#include <klee/klee.h>
#include "hash.c"

int main() {
    // Initialize hash table
    xmlHashTablePtr hash = xmlHashCreate(0);
    if (hash == NULL) return -1;

    // Create symbolic inputs
    #define KEY_SIZE 10
    xmlChar key[KEY_SIZE];
    xmlChar key2[KEY_SIZE];
    xmlChar key3[KEY_SIZE];
    void* payload = NULL;
    
    klee_make_symbolic(key, KEY_SIZE, "key");
    klee_make_symbolic(key2, KEY_SIZE, "key2");
    klee_make_symbolic(key3, KEY_SIZE, "key3");
    
    // Null-terminate the strings
    key[KEY_SIZE-1] = '\0';
    key2[KEY_SIZE-1] = '\0';
    key3[KEY_SIZE-1] = '\0';

    // Call xmlHashAddEntry3 as the entry function
    int result = xmlHashAddEntry3(hash, key, key2, key3, payload);
    
    // Cleanup
    xmlHashFree(hash, xmlHashDefaultDeallocator);
    
    return result;
}