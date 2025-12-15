#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stubs for libxml2 types and functions needed to reach target */
typedef struct _xmlRegAtom xmlRegAtom;
typedef unsigned char xmlChar;

struct _xmlRegAtom {
    xmlChar* valuep;
    /* other fields omitted for stub */
};

typedef struct _xmlRegExecCtxt xmlRegExecCtxt;
struct _xmlRegExecCtxt {
    /* minimal stub */
};

void xmlRegFreeAtom(xmlRegAtom* atom) {
    /* stub implementation */
    if (atom && atom->valuep) {
        free(atom->valuep);
    }
    free(atom);
}

void* xmlMallocAtomic(size_t size) {
    return malloc(size);
}

int xmlFAGenerateTransitions(void* am, void* from, void* to, xmlRegAtom* atom) {
    /* stub that can succeed or fail based on symbolic condition */
    int result;
    klee_make_symbolic(&result, sizeof(result), "transitions_result");
    klee_assume(result == -1 || result == 0);
    return result;
}

/* Target function signature inferred from context */
xmlRegAtom* target_function(xmlChar* token, xmlChar* token2, void* am, void* from, void* to) {
    size_t lenn, lenp;
    xmlChar* str;
    xmlRegAtom* atom;
    
    /* Allocate atom */
    atom = (xmlRegAtom*)malloc(sizeof(xmlRegAtom));
    if (!atom) return NULL;
    atom->valuep = NULL;
    
    /* Compute lengths from tokens */
    lenn = strlen((char*)token2);
    lenp = strlen((char*)token);
    
    /* Allocate buffer - this is line 5923 in original */
    str = (xmlChar*)xmlMallocAtomic(lenn + lenp + 2);
    if (str == NULL) {
        xmlRegFreeAtom(atom);
        return NULL;
    }
    
    /* VULNERABLE MEMCPY - line 5928 in original */
    /* Vulnerability assertion: ensure lenp doesn't exceed allocated buffer */
    SAILR_ASSERT(lenp <= lenn + lenp + 1);
    memcpy(&str[0], token, lenp);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Rest of the function (simplified) */
    str[lenp] = '|';
    memcpy(&str[lenp + 1], token2, lenn);
    str[lenn + lenp + 1] = 0;
    
    atom->valuep = str;
    
    /* Call to xmlFAGenerateTransitions - line 5936 in original */
    if (xmlFAGenerateTransitions(am, from, to, atom) < 0) {
        xmlRegFreeAtom(atom);
        return NULL;
    }
    
    return atom;
}

int main(void) {
    /* Symbolic inputs to drive execution to target line */
    xmlChar token[256];
    xmlChar token2[256];
    void* am;
    void* from;
    void* to;
    
    /* Make inputs symbolic */
    klee_make_symbolic(token, sizeof(token), "token");
    klee_make_symbolic(token2, sizeof(token2), "token2");
    
    /* Ensure tokens are null-terminated strings */
    token[255] = '\0';
    token2[255] = '\0';
    
    /* Create dummy pointers for other parameters */
    am = malloc(1);
    from = malloc(1);
    to = malloc(1);
    
    /* Call target function */
    xmlRegAtom* result = target_function(token, token2, am, from, to);
    
    /* Cleanup */
    if (result) {
        xmlRegFreeAtom(result);
    }
    free(am);
    free(from);
    free(to);
    
    return 0;
}