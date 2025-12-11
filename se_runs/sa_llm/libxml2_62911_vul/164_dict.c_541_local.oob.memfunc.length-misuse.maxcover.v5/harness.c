#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal struct definitions from libxml2 needed to reach the target */
typedef struct _xmlDictEntry xmlDictEntry;
struct _xmlDictEntry {
    struct _xmlDictEntry *next;
    unsigned int hashValue;
    char *name;
};

typedef struct _xmlDict xmlDict;
struct _xmlDict {
    xmlDictEntry *dict[256];
    /* Other fields omitted for brevity */
};

/* Stub for xmlDictLookup - the actual function from dict.c */
const xmlChar* xmlDictLookup(xmlDict *dict, const xmlChar *name, int len) {
    unsigned int hashValue;
    xmlDictEntry *entry;
    const xmlChar *prefix = NULL;
    int found = 0;
    int i;
    
    /* Simplified hash calculation */
    hashValue = 0;
    for (i = 0; i < len; i++) {
        hashValue = hashValue << 5 ^ name[i];
    }
    hashValue &= 0xFF;
    
    /* Lookup in dictionary */
    entry = dict->dict[hashValue];
    while (entry != NULL) {
        if (entry->hashValue == hashValue) {
            if (prefix == NULL) {
                /*
                 * name is not necessarily null-terminated.
                 */
                if ((memcmp(entry->name, name, len) == 0) &&
                    (entry->name[len] == 0)) {
                    found = 1;
                    
                    /* VULNERABILITY ASSERTION: Ensure len doesn't exceed entry->name buffer */
                    SAILR_ASSERT(len <= strlen(entry->name));
                    
                    /* REACHABILITY ASSERTION */
                    klee_assert(0 && "SAILR_REACH_ASSERT");
                    
                    break;
                }
            }
        }
        entry = entry->next;
    }
    
    return found ? (const xmlChar*)entry->name : NULL;
}

/* Entry point for KLEE */
int main(void) {
    xmlDict dict;
    xmlDictEntry entry;
    char entry_name[256];
    char lookup_name[256];
    int len;
    int i;
    
    /* Initialize dictionary structure */
    for (i = 0; i < 256; i++) {
        dict.dict[i] = NULL;
    }
    
    /* Make symbolic inputs */
    klee_make_symbolic(entry_name, sizeof(entry_name), "entry_name");
    klee_make_symbolic(lookup_name, sizeof(lookup_name), "lookup_name");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Assume reasonable constraints */
    klee_assume(len >= 0);
    klee_assume(len < 256);  /* Reasonable bound for symbolic execution */
    
    /* Ensure entry_name is null-terminated */
    entry_name[255] = '\0';
    lookup_name[255] = '\0';
    
    /* Set up dictionary entry */
    entry.next = NULL;
    entry.hashValue = 0;  /* Will be recalculated in xmlDictLookup */
    entry.name = entry_name;
    
    /* Add entry to dictionary at some bucket */
    dict.dict[0] = &entry;
    
    /* Call the target function */
    xmlDictLookup(&dict, (const xmlChar*)lookup_name, len);
    
    return 0;
}