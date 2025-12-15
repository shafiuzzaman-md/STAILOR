#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal declarations from libxml2 needed to reach the target */
typedef struct _xmlDict xmlDict;
typedef xmlDict *xmlDictPtr;

typedef struct _xmlDictEntry xmlDictEntry;
struct _xmlDictEntry {
    struct _xmlDictEntry *next;
    const xmlChar *name;
    unsigned int len;
    unsigned int okey;
};

struct _xmlDict {
    xmlDictEntry *dict[256];
    /* ... other fields omitted for brevity ... */
};

/* Stub for xmlStrlen */
static unsigned int xmlStrlen(const xmlChar *str) {
    if (!str) return 0;
    unsigned int len = 0;
    while (str[len] != 0) len++;
    return len;
}

/* Stub for xmlDictLookup - the function containing the target line */
const xmlChar *xmlDictLookup(xmlDictPtr dict, const xmlChar *name, int len) {
    unsigned int l, okey;
    xmlDictEntry *insert;
    
    if (dict == NULL || name == NULL) return NULL;
    
    if (len < 0)
        l = xmlStrlen(name);
    else
        l = len;
    
    /* Simplified: assume okey is derived from name and l */
    okey = 0;
    for (unsigned int i = 0; i < l; i++) {
        okey = okey * 33 + name[i];
    }
    okey %= 256;
    
    /* Lookup in dict->dict[okey] chain */
    insert = dict->dict[okey];
    while (insert != NULL) {
        /* This is the target block */
        #ifdef __GNUC__
        if ((insert->okey == okey) && (insert->len == l)) {
            /* TARGET LINE 1048: if (!memcmp(insert->name, name, l)) */
            /* Vulnerability assertion: ensure l does not exceed either buffer */
            unsigned int insert_name_len = xmlStrlen(insert->name);
            unsigned int name_len = xmlStrlen(name);
            SAILR_ASSERT(l <= insert_name_len && l <= name_len);
            /* Reachability marker */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            if (!memcmp(insert->name, name, l))
                return insert->name;
        }
        #else
        /* Not used in this harness */
        #endif
        insert = insert->next;
    }
    
    /* Not found */
    return NULL;
}

int main(void) {
    /* Allocate a minimal dict */
    xmlDict *dict = (xmlDict *)malloc(sizeof(xmlDict));
    if (!dict) return 1;
    for (int i = 0; i < 256; i++) dict->dict[i] = NULL;
    
    /* Create a dict entry to match */
    xmlDictEntry *entry = (xmlDictEntry *)malloc(sizeof(xmlDictEntry));
    if (!entry) return 1;
    
    /* Make entry->name symbolic with bounded length */
    char entry_name[256];
    unsigned int entry_len;
    klee_make_symbolic(&entry_len, sizeof(entry_len), "entry_len");
    klee_assume(entry_len > 0 && entry_len < 256);
    klee_make_symbolic(entry_name, sizeof(entry_name), "entry_name");
    /* Ensure it's null-terminated at some point */
    entry_name[entry_len] = 0;
    entry->name = (const xmlChar *)entry_name;
    entry->len = entry_len;
    entry->okey = 0;  /* Will be recomputed in xmlDictLookup */
    entry->next = NULL;
    
    /* Insert into dict at slot 0 */
    dict->dict[0] = entry;
    
    /* Make lookup name symbolic */
    char lookup_name[256];
    int lookup_len;
    klee_make_symbolic(&lookup_len, sizeof(lookup_len), "lookup_len");
    klee_assume(lookup_len >= -1 && lookup_len < 256);
    klee_make_symbolic(lookup_name, sizeof(lookup_name), "lookup_name");
    /* Ensure null termination if lookup_len == -1 */
    lookup_name[255] = 0;
    
    /* Call xmlDictLookup - this will reach the target if conditions match */
    xmlDictLookup(dict, (const xmlChar *)lookup_name, lookup_len);
    
    /* Cleanup */
    free(entry);
    free(dict);
    
    return 0;
}