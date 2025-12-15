#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions from libxml2 needed for the target code */
typedef struct _xmlDict xmlDict;
typedef struct _xmlDictEntry xmlDictEntry;

struct _xmlDictEntry {
    const char *name;
    unsigned int len;
    unsigned int okey;
    xmlDictEntry *next;
    int valid;
};

struct _xmlDict {
    xmlDictEntry *dict;
    unsigned int size;
};

/* Stub for xmlDictComputeKey */
unsigned int xmlDictComputeKey(xmlDict *dict, const char *name, unsigned int len) {
    /* Simple hash for symbolic execution */
    unsigned int hash = 0;
    for (unsigned int i = 0; i < len; i++) {
        hash = (hash << 5) + hash + name[i];
    }
    return hash;
}

/* Stub for xmlMalloc */
void *xmlMalloc(size_t size) {
    return malloc(size);
}

/* Target function that contains the vulnerable line */
void target_function(xmlDict *dict, xmlDictEntry *olddict, unsigned int i, int keep_keys) {
    unsigned int okey;
    unsigned int key;

    if (keep_keys)
        okey = olddict[i].okey;
    else
        okey = xmlDictComputeKey(dict, olddict[i].name, olddict[i].len);
    key = okey % dict->size;

    if (dict->dict[key].valid == 0) {
        /* VULNERABLE LINE: memcpy(&(dict->dict[key]), &(olddict[i]), sizeof(xmlDictEntry)); */
        /* Vulnerability assertion: ensure key is within dict->dict bounds */
        SAILR_ASSERT(key < dict->size);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        memcpy(&(dict->dict[key]), &(olddict[i]), sizeof(xmlDictEntry));
        dict->dict[key].next = NULL;
        dict->dict[key].okey = okey;
    } else {
        xmlDictEntryPtr entry;
        entry = xmlMalloc(sizeof(xmlDictEntry));
        if (entry != NULL) {
            entry->name = olddict[i].name;
            /* ... rest of function stub ... */
            free(entry);
        }
    }
}

int main(void) {
    /* Symbolic variables */
    unsigned int dict_size;
    unsigned int i;
    int keep_keys;
    unsigned int olddict_len;
    
    /* Allocate and initialize dict structure */
    xmlDict dict;
    klee_make_symbolic(&dict_size, sizeof(dict_size), "dict_size");
    klee_assume(dict_size > 0 && dict_size < 100); /* Reasonable bounds */
    dict.size = dict_size;
    dict.dict = (xmlDictEntry *)calloc(dict_size, sizeof(xmlDictEntry));
    
    /* Allocate olddict array */
    klee_make_symbolic(&olddict_len, sizeof(olddict_len), "olddict_len");
    klee_assume(olddict_len > 0 && olddict_len < 100);
    xmlDictEntry *olddict = (xmlDictEntry *)malloc(olddict_len * sizeof(xmlDictEntry));
    
    /* Initialize olddict entries symbolically */
    for (unsigned int j = 0; j < olddict_len; j++) {
        klee_make_symbolic(&olddict[j].name, sizeof(olddict[j].name), "olddict_name");
        klee_make_symbolic(&olddict[j].len, sizeof(olddict[j].len), "olddict_len");
        klee_make_symbolic(&olddict[j].okey, sizeof(olddict[j].okey), "olddict_okey");
        klee_make_symbolic(&olddict[j].valid, sizeof(olddict[j].valid), "olddict_valid");
        klee_make_symbolic(&olddict[j].next, sizeof(olddict[j].next), "olddict_next");
    }
    
    /* Symbolic index and flag */
    klee_make_symbolic(&i, sizeof(i), "i");
    klee_assume(i < olddict_len); /* Ensure i is within olddict bounds */
    klee_make_symbolic(&keep_keys, sizeof(keep_keys), "keep_keys");
    
    /* Initialize dict entries to have some valid=0 entries */
    for (unsigned int j = 0; j < dict_size; j++) {
        klee_make_symbolic(&dict.dict[j].valid, sizeof(dict.dict[j].valid), "dict_valid");
    }
    
    /* Call target function */
    target_function(&dict, olddict, i, keep_keys);
    
    /* Cleanup */
    free(dict.dict);
    free(olddict);
    
    return 0;
}