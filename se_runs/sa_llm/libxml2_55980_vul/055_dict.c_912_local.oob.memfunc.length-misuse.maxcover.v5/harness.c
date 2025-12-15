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
    if (!dict || !name) return NULL;
    
    unsigned int l;
    if (len < 0)
        l = xmlStrlen(name);
    else
        l = len;
    
    if (l == 0) return NULL;
    
    unsigned int okey = name[0];
    okey <<= 8;
    if (l > 1)
        okey += name[l-1];
    okey <<= 8;
    okey += l;
    
    unsigned int idx = okey % 256;
    xmlDictEntry *insert = dict->dict[idx];
    
    while (insert) {
        if ((insert->okey == okey) && (insert->len == l)) {
            /* TARGET LINE 912: if (!memcmp(insert->name, name, l)) */
            /* Vulnerability assertion: ensure l doesn't exceed either buffer */
            SAILR_ASSERT(l <= insert->len && l <= len);
            /* Reachability marker */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            return insert->name;
        }
        insert = insert->next;
    }
    
    return NULL;
}

int main(void) {
    /* Create a mock dictionary */
    xmlDict dict;
    memset(&dict, 0, sizeof(dict));
    
    /* Create a dictionary entry */
    xmlDictEntry *entry = malloc(sizeof(xmlDictEntry));
    entry->next = NULL;
    
    /* Make entry->name symbolic with bounded length */
    char entry_name[256];
    unsigned int entry_len;
    klee_make_symbolic(&entry_len, sizeof(entry_len), "entry_len");
    klee_assume(entry_len > 0 && entry_len < 256);
    klee_make_symbolic(entry_name, sizeof(entry_name), "entry_name");
    entry_name[entry_len] = '\0'; /* Ensure null termination for xmlStrlen */
    entry->name = (const xmlChar *)entry_name;
    entry->len = entry_len;
    
    /* Compute okey for the entry */
    unsigned int okey = entry_name[0];
    okey <<= 8;
    if (entry_len > 1)
        okey += entry_name[entry_len-1];
    okey <<= 8;
    okey += entry_len;
    entry->okey = okey;
    
    /* Place entry in dictionary */
    unsigned int idx = okey % 256;
    dict.dict[idx] = entry;
    
    /* Make lookup name symbolic */
    char lookup_name[256];
    int lookup_len;
    klee_make_symbolic(&lookup_len, sizeof(lookup_len), "lookup_len");
    klee_assume(lookup_len >= -1 && lookup_len < 256);
    klee_make_symbolic(lookup_name, sizeof(lookup_name), "lookup_name");
    
    /* Ensure the lookup name matches the entry for path feasibility */
    if (lookup_len < 0) {
        /* Negative length means use xmlStrlen */
        klee_assume(lookup_name[0] == entry_name[0]);
        klee_assume(lookup_name[entry_len-1] == entry_name[entry_len-1]);
        lookup_name[entry_len] = '\0';
    } else if (lookup_len > 0) {
        /* Positive length - constrain to match entry */
        klee_assume(lookup_len == (int)entry_len);
        klee_assume(lookup_name[0] == entry_name[0]);
        if (entry_len > 1)
            klee_assume(lookup_name[entry_len-1] == entry_name[entry_len-1]);
    }
    
    /* Call the target function */
    xmlDictLookup(&dict, (const xmlChar *)lookup_name, lookup_len);
    
    /* Cleanup */
    free(entry);
    
    return 0;
}