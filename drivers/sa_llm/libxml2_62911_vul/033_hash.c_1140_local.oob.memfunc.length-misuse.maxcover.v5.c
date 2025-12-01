#include <klee/klee.h>
#include "hash.c"

int main() {
    // Initialize hash table structure
    xmlHashTable hash;
    hash.size = klee_int("hash_size");
    klee_assume(hash.size > 0);
    klee_assume((hash.size & (hash.size - 1)) == 0); // power of 2
    
    // Allocate table with symbolic size
    hash.table = (xmlHashEntry*)malloc(sizeof(xmlHashEntry) * hash.size);
    hash.nbElems = klee_int("nbElems");
    hash.randomSeed = 0;
    hash.dict = NULL;
    
    // Initialize table entries
    for (unsigned i = 0; i < hash.size; i++) {
        hash.table[i].hashValue = 0;
        hash.table[i].key = NULL;
        hash.table[i].key2 = NULL;
        hash.table[i].key3 = NULL;
        hash.table[i].payload = NULL;
    }
    
    // Create symbolic entry positions
    unsigned entry_pos = klee_int("entry_pos");
    unsigned cur_pos = klee_int("cur_pos");
    klee_assume(entry_pos < hash.size);
    klee_assume(cur_pos < hash.size);
    
    // Set up entry and cur pointers
    xmlHashEntry* entry = &hash.table[entry_pos];
    xmlHashEntry* cur = &hash.table[cur_pos];
    
    // Make entry and next symbolic for memmove bounds check
    xmlHashEntry* next = entry + 1;
    
    // Assertion for memmove bounds at line 1140
    // Check that (char*)cur - (char*)entry doesn't exceed valid bounds
    size_t move_size = (char*)cur - (char*)entry;
    klee_assert(move_size <= (char*)&hash.table[hash.size] - (char*)entry);
    
    // Call the target function
    xmlChar key[16];
    klee_make_symbolic(key, sizeof(key), "key");
    
    xmlHashRemoveEntry3(&hash, key, NULL, NULL, NULL);
    
    free(hash.table);
    return 0;
}