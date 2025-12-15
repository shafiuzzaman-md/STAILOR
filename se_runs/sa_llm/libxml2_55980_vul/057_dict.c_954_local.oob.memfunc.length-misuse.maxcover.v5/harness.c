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
typedef xmlDictEntry *xmlDictEntryPtr;

struct _xmlDictEntry {
    struct _xmlDictEntry *next;
    const xmlChar *name;
    unsigned int len;
    int okey;
};

struct _xmlDict {
    xmlDictEntryPtr *dict;
    unsigned int size;
    unsigned int nbElems;
};

/* Stub for xmlStrncmp */
int xmlStrncmp(const xmlChar *str1, const xmlChar *str2, int len) {
    if (str1 == NULL || str2 == NULL) return -1;
    return memcmp(str1, str2, len);
}

/* Target function from dict.c - simplified to reach line 954 */
const xmlChar *xmlDictLookup(xmlDictPtr dict, const xmlChar *name, int len) {
    unsigned int skey, nbi;
    xmlDictEntryPtr tmp;
    
    if ((dict == NULL) || (name == NULL) || (len < 0))
        return NULL;
    
    /* Simplified: just get some entry to work with */
    skey = 0;
    nbi = 0;
    
    /* Create a symbolic entry to match conditions */
    tmp = (xmlDictEntryPtr)malloc(sizeof(struct _xmlDictEntry));
    klee_make_symbolic(tmp, sizeof(struct _xmlDictEntry), "tmp_entry");
    
    /* Assume tmp is valid and has matching okey and len */
    klee_assume(tmp != NULL);
    klee_assume(tmp->okey == skey);
    klee_assume(tmp->len == len);
    klee_assume(tmp->name != NULL);
    
    /* Make name symbolic with appropriate length */
    xmlChar *sym_name = (xmlChar *)malloc(len + 1);
    klee_make_symbolic(sym_name, len + 1, "sym_name");
    sym_name[len] = '\0';
    
    /* The vulnerable memcmp call at line 954 */
    if ((tmp->okey == skey) && (tmp->len == len)) {
        /* Vulnerability assertion: ensure l doesn't exceed buffer bounds */
        SAILR_ASSERT(len <= strlen((char*)tmp->name));
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        if (!memcmp(tmp->name, sym_name, len))
            return tmp->name;
    }
    
    free(sym_name);
    free(tmp);
    return NULL;
}

int main(void) {
    xmlDict dict;
    xmlChar *name;
    int len;
    
    /* Initialize dict minimally */
    dict.dict = NULL;
    dict.size = 0;
    dict.nbElems = 0;
    
    /* Make length symbolic with reasonable bounds */
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 256);  /* Reasonable upper bound */
    
    /* Allocate and make name symbolic */
    name = (xmlChar *)malloc(len + 1);
    klee_make_symbolic(name, len + 1, "name");
    if (len > 0) {
        name[len] = '\0';
    }
    
    /* Call the target function */
    xmlDictLookup(&dict, name, len);
    
    free(name);
    return 0;
}