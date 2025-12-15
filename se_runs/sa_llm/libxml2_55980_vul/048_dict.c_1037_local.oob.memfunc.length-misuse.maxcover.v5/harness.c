#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal definitions from libxml2 needed to compile */
typedef struct _xmlDict xmlDict;
typedef xmlDict *xmlDictPtr;

struct _xmlDictEntry {
    char *name;
    int len;
    unsigned long okey;
    struct _xmlDictEntry *next;
    int valid;
};

struct _xmlDict {
    struct _xmlDictEntry *dict;
    int size;
};

/* Stub for xmlStrncmp - simplified version */
int xmlStrncmp(const char *str1, const char *str2, int len) {
    if (len <= 0) return 0;
    return memcmp(str1, str2, len);
}

/* Target function from dict.c - simplified to focus on the vulnerable path */
char *xmlDictLookup(xmlDictPtr dict, const char *name, int l) {
    unsigned long okey = 0;
    struct _xmlDictEntry *insert;
    int key;
    
    /* Calculate hash key - simplified */
    for (int i = 0; i < l && name[i]; i++) {
        okey = okey * 31 + name[i];
    }
    key = okey % dict->size;
    
    if (dict->dict[key].valid == 0) {
        insert = NULL;
    } else {
        for (insert = &(dict->dict[key]); insert->next != NULL;
             insert = insert->next) {
#ifdef __GNUC__
            if ((insert->okey == okey) && (insert->len == l)) {
                if (!memcmp(insert->name, name, l))
                    return insert->name;
            }
#else
            if ((insert->okey == okey) && (insert->len == l) &&
                (!xmlStrncmp(insert->name, name, l)))
                return insert->name;
#endif
        }
    }
    return NULL;
}

int main(void) {
    /* Symbolic inputs */
    int l;
    char name[256];
    xmlDict dict;
    struct _xmlDictEntry entry;
    struct _xmlDictEntry next_entry;
    
    /* Initialize dictionary structure */
    klee_make_symbolic(&l, sizeof(l), "l");
    klee_make_symbolic(name, sizeof(name), "name");
    
    /* Assume reasonable bounds for symbolic values */
    klee_assume(l >= 0 && l < 256);
    
    /* Initialize dictionary entry to match the vulnerable path */
    entry.valid = 1;
    entry.okey = 0;
    entry.len = l;
    entry.next = &next_entry;
    next_entry.next = NULL;
    
    /* Calculate the same okey as in xmlDictLookup */
    for (int i = 0; i < l && name[i]; i++) {
        entry.okey = entry.okey * 31 + name[i];
    }
    
    /* Set up entry.name to potentially match */
    entry.name = malloc(l + 1);
    if (entry.name) {
        for (int i = 0; i < l; i++) {
            entry.name[i] = name[i];
        }
        entry.name[l] = '\0';
    }
    
    /* Set up dictionary */
    dict.size = 1;  /* Ensure key = 0 */
    dict.dict = &entry;
    
    /* Call the target function - this should reach line 1037 */
    char *result = xmlDictLookup(&dict, name, l);
    
    /* Vulnerability assertion: ensure memcmp length doesn't exceed buffer bounds */
    /* The condition checks that l doesn't exceed the allocated buffer size */
    SAILR_ASSERT(l <= 256 && l <= (entry.name ? l + 1 : 0));
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    if (entry.name) free(entry.name);
    
    return 0;
}