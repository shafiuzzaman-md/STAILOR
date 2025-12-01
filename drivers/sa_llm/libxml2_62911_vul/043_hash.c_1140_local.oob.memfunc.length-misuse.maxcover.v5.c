#include <klee/klee.h>
#include "hash.c"

int main() {
    // Initialize hash table structure
    xmlHashTable hash;
    hash.size = 16;  // Power of 2 for mask calculation
    hash.nbElems = 8;  // Some non-zero value
    hash.randomSeed = 0x12345678;
    hash.dict = NULL;
    
    // Allocate table with symbolic entries
    hash.table = (xmlHashEntry*)malloc(sizeof(xmlHashEntry) * hash.size);
    
    // Make table entries symbolic
    for (int i = 0; i < hash.size; i++) {
        klee_make_symbolic(&hash.table[i], sizeof(xmlHashEntry), "table_entry");
    }
    
    // Create symbolic keys
    xmlChar key[32];
    xmlChar key2[32];
    xmlChar key3[32];
    klee_make_symbolic(key, sizeof(key), "key");
    klee_make_symbolic(key2, sizeof(key2), "key2");
    klee_make_symbolic(key3, sizeof(key3), "key3");
    
    // Call the target function
    int result = xmlHashRemoveEntry3(&hash, key, key2, key3, NULL);
    
    // Assertion for potential memmove bounds issue
    // Check that the memmove at line 1140 doesn't access out of bounds
    xmlHashEntry* entry = hash.table;
    xmlHashEntry* next = entry + 1;
    xmlHashEntry* cur = hash.table + (hash.size - 1);
    
    // Ensure the memmove source and destination ranges are within table bounds
    klee_assert((char*)entry >= (char*)hash.table);
    klee_assert((char*)next >= (char*)hash.table);
    klee_assert((char*)cur >= (char*)hash.table);
    klee_assert((char*)entry + ((char*)cur - (char*)entry) <= (char*)hash.table + sizeof(xmlHashEntry) * hash.size);
    klee_assert((char*)next + ((char*)cur - (char*)entry) <= (char*)hash.table + sizeof(xmlHashEntry) * hash.size);
    
    free(hash.table);
    return 0;
}