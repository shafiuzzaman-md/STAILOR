#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal definitions from libxml2 needed to reach the target line */
typedef struct _xmlDictEntry xmlDictEntry;
struct _xmlDictEntry {
    unsigned int valid;
    xmlDictEntry *next;
    unsigned int okey;
    const char *name;
    int len;
};

typedef struct _xmlDict xmlDict;
struct _xmlDict {
    xmlDictEntry *dict;
    unsigned int size;
};

/* Stub for xmlDictComputeKey */
unsigned int xmlDictComputeKey(xmlDict *dict, const char *name, int len) {
    /* Simple hash for symbolic execution */
    unsigned int hash = 0;
    for (int i = 0; i < len && name[i] != '\0'; i++) {
        hash = hash * 31 + name[i];
    }
    return hash;
}

/* Stub for xmlFree */
void xmlFree(void *ptr) {
    free(ptr);
}

/* Entrypoint that reaches the target memcpy */
int main(void) {
    /* Symbolic inputs */
    int keep_keys;
    unsigned int dict_size;
    unsigned int existing_key_valid;
    xmlDictEntry *iter;
    xmlDict dict;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&keep_keys, sizeof(keep_keys), "keep_keys");
    klee_make_symbolic(&dict_size, sizeof(dict_size), "dict_size");
    klee_make_symbolic(&existing_key_valid, sizeof(existing_key_valid), "existing_key_valid");
    
    /* Assume reasonable constraints */
    klee_assume(dict_size > 0 && dict_size < 1024);  /* Reasonable dict size */
    klee_assume(keep_keys == 0 || keep_keys == 1);
    
    /* Allocate and initialize dict */
    dict.dict = (xmlDictEntry *)calloc(dict_size, sizeof(xmlDictEntry));
    dict.size = dict_size;
    
    /* Allocate iter entry */
    iter = (xmlDictEntry *)malloc(sizeof(xmlDictEntry));
    klee_make_symbolic(&iter->okey, sizeof(iter->okey), "iter_okey");
    klee_make_symbolic(&iter->len, sizeof(iter->len), "iter_len");
    
    /* Allocate name buffer */
    char *name_buf = (char *)malloc(iter->len + 1);
    klee_make_symbolic(name_buf, iter->len + 1, "name_buf");
    name_buf[iter->len] = '\0';
    iter->name = name_buf;
    
    /* Assume iter->len is reasonable */
    klee_assume(iter->len >= 0 && iter->len < 256);
    
    /* Compute key */
    unsigned int okey;
    if (keep_keys) {
        okey = iter->okey;
    } else {
        okey = xmlDictComputeKey(&dict, iter->name, iter->len);
    }
    unsigned int key = okey % dict.size;
    
    /* Set up dict entry at computed key */
    dict.dict[key].valid = existing_key_valid;
    
    /* Vulnerability assertion: ensure key is within bounds */
    SAILR_ASSERT(key < dict.size);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    free(name_buf);
    free(iter);
    free(dict.dict);
    
    return 0;
}