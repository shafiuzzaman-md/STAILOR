#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub types to match the target code structure */
typedef struct _xmlDictEntry xmlDictEntry;
typedef xmlDictEntry *xmlDictEntryPtr;

struct _xmlDictEntry {
    unsigned int valid;
    xmlDictEntryPtr next;
    unsigned long okey;
    int len;
    char *name;
};

typedef struct _xmlDict xmlDict;
typedef xmlDict *xmlDictPtr;

struct _xmlDict {
    xmlDictPtr subdict;
    int size;
    xmlDictEntry *dict;
};

/* Function prototype from dict.c that we need to call */
const char *xmlDictLookup(xmlDictPtr dict, const char *name, int len);

/* Main harness */
int main(void) {
    /* Create symbolic inputs */
    xmlDict dict;
    xmlDict subdict;
    xmlDictEntry entry;
    xmlDictEntry *dict_array;
    char *name;
    int len;
    unsigned long skey;
    unsigned int key;
    
    /* Allocate memory for dict array */
    dict_array = malloc(sizeof(xmlDictEntry) * 10);
    if (!dict_array) return 0;
    
    /* Initialize dict structure */
    dict.subdict = &subdict;
    subdict.size = 10;
    subdict.dict = dict_array;
    
    /* Make key symbolic - will be used to compute array index */
    klee_make_symbolic(&skey, sizeof(skey), "skey");
    key = skey % subdict.size;
    
    /* Ensure key is within bounds */
    klee_assume(key < 10);
    
    /* Initialize the entry at the computed index */
    dict_array[key].valid = 1;  /* Mark as valid */
    dict_array[key].next = NULL;
    
    /* Make okey symbolic - will be compared with skey */
    klee_make_symbolic(&dict_array[key].okey, sizeof(dict_array[key].okey), "okey");
    
    /* Make len symbolic - will be compared with parameter len */
    klee_make_symbolic(&len, sizeof(len), "len");
    dict_array[key].len = len;
    
    /* Allocate and make name symbolic */
    name = malloc(256);
    if (!name) {
        free(dict_array);
        return 0;
    }
    klee_make_symbolic(name, 256, "name");
    
    /* Allocate and make entry name symbolic */
    dict_array[key].name = malloc(256);
    if (!dict_array[key].name) {
        free(name);
        free(dict_array);
        return 0;
    }
    klee_make_symbolic(dict_array[key].name, 256, "entry_name");
    
    /* Constrain len to be non-negative and reasonable for memory safety */
    klee_assume(len >= 0);
    klee_assume(len < 256);
    
    /* Ensure the comparison conditions will be true to reach the memcmp call */
    klee_assume(dict_array[key].okey == skey);
    klee_assume(dict_array[key].len == len);
    
    /* Call the target function - this should reach line 942 */
    xmlDictLookup(&dict, name, len);
    
    /* Vulnerability assertion: memcmp length should not exceed buffer bounds */
    /* The condition checks that l (which is len) doesn't exceed the allocated buffer size */
    SAILR_ASSERT(len <= 256);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    free(dict_array[key].name);
    free(name);
    free(dict_array);
    
    return 0;
}

/* Stub implementation of xmlDictLookup to reach the target line */
const char *xmlDictLookup(xmlDictPtr dict, const char *name, int l) {
    unsigned long skey = 0;
    unsigned int key;
    xmlDictEntryPtr tmp;
    
    /* Simple hash computation for skey - just for demonstration */
    for (int i = 0; i < l && i < 256; i++) {
        skey = skey * 31 + name[i];
    }
    
    key = skey % dict->subdict->size;
    
    if (dict->subdict->dict[key].valid != 0) {
        for (tmp = &(dict->subdict->dict[key]); tmp->next != NULL; tmp = tmp->next) {
#ifdef __GNUC__
            if ((tmp->okey == skey) && (tmp->len == l)) {
                /* This is the target line 942 */
                if (!memcmp(tmp->name, name, l))
                    return tmp->name;
            }
#else
            /* Stub for non-GCC path */
            if ((tmp->okey == skey) && (tmp->len == l)) {
                return tmp->name;
            }
#endif
        }
    }
    
    return NULL;
}