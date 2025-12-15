#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub for xmlChar */
typedef unsigned char xmlChar;

/* Minimal stub for xmlRegAtom */
typedef struct _xmlRegAtom xmlRegAtom;
struct _xmlRegAtom {
    xmlChar* valuep;
    void* data;
};

/* Minimal stub for xmlMallocAtomic */
void* xmlMallocAtomic(size_t size) {
    return malloc(size);
}

/* Minimal stub for xmlRegFreeAtom */
void xmlRegFreeAtom(xmlRegAtom* atom) {
    if (atom && atom->valuep) {
        free(atom->valuep);
    }
    free(atom);
}

/* Target function signature inferred from context */
xmlRegAtom* xmlRegNewAtom(xmlChar* token, xmlChar* token2, void* data, int min) {
    xmlRegAtom* atom = (xmlRegAtom*)malloc(sizeof(xmlRegAtom));
    if (!atom) return NULL;
    
    atom->valuep = NULL;
    atom->data = NULL;
    
    size_t lenn = strlen((char*)token2);
    size_t lenp = strlen((char*)token);
    
    xmlChar* str = (xmlChar*)xmlMallocAtomic(lenn + lenp + 2);
    if (str == NULL) {
        xmlRegFreeAtom(atom);
        return NULL;
    }
    
    /* TARGET LINE 6060 - vulnerable memcpy */
    memcpy(&str[0], token, lenp);
    
    /* Vulnerability assertion: ensure lenp doesn't exceed token length */
    SAILR_ASSERT(lenp <= strlen((char*)token));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    str[lenp] = '|';
    memcpy(&str[lenp + 1], token2, lenn);
    str[lenn + lenp + 1] = 0;
    
    atom->valuep = str;
    atom->data = data;
    
    return atom;
}

int main(void) {
    /* Symbolic inputs to reach the target */
    xmlChar token[256];
    xmlChar token2[256];
    int min;
    
    klee_make_symbolic(token, sizeof(token), "token");
    klee_make_symbolic(token2, sizeof(token2), "token2");
    klee_make_symbolic(&min, sizeof(min), "min");
    
    /* Ensure null-terminated strings */
    token[255] = '\0';
    token2[255] = '\0';
    
    /* Assume reasonable lengths to avoid trivial failures */
    klee_assume(strlen((char*)token) < 256);
    klee_assume(strlen((char*)token2) < 256);
    
    /* Call the target function */
    xmlRegAtom* atom = xmlRegNewAtom(token, token2, NULL, min);
    
    if (atom) {
        xmlRegFreeAtom(atom);
    }
    
    return 0;
}