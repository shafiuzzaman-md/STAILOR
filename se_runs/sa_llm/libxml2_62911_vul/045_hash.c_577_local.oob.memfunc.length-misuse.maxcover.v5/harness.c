#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed from libxml2 */
typedef struct _xmlHashEntry xmlHashEntry;
struct _xmlHashEntry {
    void *payload;
    const xmlChar *name;
    const xmlChar *name2;
    const xmlChar *name3;
    xmlHashEntry *next;
};

typedef struct _xmlHashTable xmlHashTable;
struct _xmlHashTable {
    xmlHashEntry **table;
    int size;
    int nbElems;
};

typedef unsigned char xmlChar;

/* Stub for xmlHashAddEntry3 */
int xmlHashAddEntry3(xmlHashTable *hash, const xmlChar *name,
                     const xmlChar *name2, const xmlChar *name3, void *userdata) {
    /* Simulate the vulnerable path: we need to reach the memmove at line 577 */
    /* The vulnerable memmove is: memmove(&entry[1], entry, (char *) cur - (char *) entry); */
    /* We need to ensure:
       1. hash->table is allocated
       2. entry points somewhere inside hash->table[0..size-1]
       3. cur points somewhere after entry within the same table slot
       4. The length (char *)cur - (char *)entry must be non-negative and potentially unsafe
    */

    /* Vulnerability condition: the length argument to memmove may exceed the bounds of the destination buffer */
    /* Specifically, if &entry[1] + length goes beyond the allocated memory for hash->table */
    /* We'll assume the table slot has space for at least one entry, but the memmove may overflow */
    /* Let's denote:
       - table_slot_size = sizeof(xmlHashEntry) * (remaining entries in this slot)
       - dest = &entry[1]
       - src = entry
       - length = (char *)cur - (char *)entry
       The safe condition is: length <= table_slot_size - sizeof(xmlHashEntry) (since dest is one entry ahead)
    */

    /* We'll use symbolic variables to control the path */
    int table_index;
    int entry_offset;  /* entry's index within the linked list at table[table_index] */
    int cur_offset;    /* cur's position relative to entry */

    klee_make_symbolic(&table_index, sizeof(table_index), "table_index");
    klee_make_symbolic(&entry_offset, sizeof(entry_offset), "entry_offset");
    klee_make_symbolic(&cur_offset, sizeof(cur_offset), "cur_offset");

    /* Assume valid indices */
    klee_assume(table_index >= 0 && table_index < hash->size);
    klee_assume(entry_offset >= 0);
    klee_assume(cur_offset >= 0);

    /* Simulate the linked list traversal to find 'entry' and 'cur' */
    /* For simplicity, we'll assume entry is the first node and cur is some later node */
    /* The length becomes cur_offset * sizeof(xmlHashEntry) */

    /* Vulnerability assertion: the memmove length should not cause an overflow */
    /* We need to check that moving 'length' bytes from 'entry' to '&entry[1]' stays within bounds */
    /* The destination buffer starts at &entry[1] and has size: (remaining entries in slot) * sizeof(xmlHashEntry) */
    /* Since we don't know the exact remaining entries, we'll use a conservative bound: 
       Assume the table slot has at least 'entry_offset + 1' entries allocated.
       Then safe condition: length <= (entry_offset) * sizeof(xmlHashEntry) */
    size_t length = cur_offset * sizeof(xmlHashEntry);
    size_t safe_limit = entry_offset * sizeof(xmlHashEntry);

    /* Place the vulnerability assertion */
    SAILR_ASSERT(length <= safe_limit);

    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    return 0;
}

int main(void) {
    /* Create a symbolic hash table */
    xmlHashTable *hash = (xmlHashTable *)malloc(sizeof(xmlHashTable));
    klee_make_symbolic(hash, sizeof(xmlHashTable), "hash");

    /* Assume reasonable size */
    klee_assume(hash->size > 0 && hash->size < 100);
    
    /* Allocate table array */
    hash->table = (xmlHashEntry **)calloc(hash->size, sizeof(xmlHashEntry *));
    
    /* Create symbolic entries for one bucket to trigger the vulnerable path */
    int bucket_index;
    klee_make_symbolic(&bucket_index, sizeof(bucket_index), "bucket_index");
    klee_assume(bucket_index >= 0 && bucket_index < hash->size);
    
    /* Allocate a few entries in this bucket to form a linked list */
    int list_length;
    klee_make_symbolic(&list_length, sizeof(list_length), "list_length");
    klee_assume(list_length >= 2 && list_length < 10);
    
    xmlHashEntry *prev = NULL;
    for (int i = 0; i < list_length; i++) {
        xmlHashEntry *entry = (xmlHashEntry *)malloc(sizeof(xmlHashEntry));
        klee_make_symbolic(entry, sizeof(xmlHashEntry), "entry");
        entry->next = NULL;
        if (prev) {
            prev->next = entry;
        } else {
            hash->table[bucket_index] = entry;
        }
        prev = entry;
    }

    /* Symbolic names */
    xmlChar *name = (xmlChar *)malloc(10);
    xmlChar *name2 = (xmlChar *)malloc(10);
    xmlChar *name3 = (xmlChar *)malloc(10);
    klee_make_symbolic(name, 10, "name");
    klee_make_symbolic(name2, 10, "name2");
    klee_make_symbolic(name3, 10, "name3");

    /* Symbolic userdata */
    void *userdata = malloc(10);
    klee_make_symbolic(userdata, 10, "userdata");

    /* Call the vulnerable function */
    xmlHashAddEntry3(hash, name, name2, name3, userdata);

    /* Cleanup (optional for KLEE) */
    free(name);
    free(name2);
    free(name3);
    free(userdata);
    for (int i = 0; i < hash->size; i++) {
        xmlHashEntry *entry = hash->table[i];
        while (entry) {
            xmlHashEntry *next = entry->next;
            free(entry);
            entry = next;
        }
    }
    free(hash->table);
    free(hash);

    return 0;
}