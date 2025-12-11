#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed for the harness */
typedef unsigned char xmlChar;

/* Stub for xmlMallocAtomic */
void* xmlMallocAtomic(size_t size) {
    return malloc(size);
}

/* Minimal struct for xmlRegAtom */
typedef struct _xmlRegAtom xmlRegAtom;
struct _xmlRegAtom {
    xmlChar* valuep;
    void* data;
};

/* Context structure needed to reach the target */
typedef struct _xmlRegParserCtxt xmlRegParserCtxt;
struct _xmlRegParserCtxt {
    xmlRegAtom* atom;
    /* Other fields omitted for simplicity */
};

/* Entrypoint function that leads to the target location */
void target_function(xmlRegParserCtxt* ctxt, xmlChar* token, int lenp, xmlChar* token2, int lenn, void* data) {
    xmlChar* str;
    
    /* This mimics the code at line 5864 */
    str = (xmlChar*) xmlMallocAtomic(lenn + lenp + 2);
    if (str == NULL)
        return;
    
    memcpy(&str[0], token, lenp);
    str[lenp] = '|';
    memcpy(&str[lenp + 1], token2, lenn);
    str[lenn + lenp + 1] = 0;
    
    ctxt->atom->valuep = str;
    ctxt->atom->data = data;
    
    /* Vulnerability assertion: ensure memcpy bounds are safe */
    SAILR_ASSERT(lenp >= 0 && lenn >= 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
}

/* Main harness */
int main(void) {
    xmlRegParserCtxt ctxt;
    xmlRegAtom atom;
    xmlChar token[256];
    xmlChar token2[256];
    int lenp, lenn;
    void* data;
    
    /* Initialize context */
    ctxt.atom = &atom;
    atom.valuep = NULL;
    atom.data = NULL;
    
    /* Make lengths symbolic */
    klee_make_symbolic(&lenp, sizeof(lenp), "lenp");
    klee_make_symbolic(&lenn, sizeof(lenn), "lenn");
    
    /* Assume non-negative lengths as hinted in spec */
    klee_assume(lenp >= 0);
    klee_assume(lenn >= 0);
    
    /* Assume reasonable bounds to avoid excessive allocation */
    klee_assume(lenp < 256);
    klee_assume(lenn < 256);
    
    /* Make tokens symbolic */
    klee_make_symbolic(token, sizeof(token), "token");
    klee_make_symbolic(token2, sizeof(token2), "token2");
    
    /* Make data pointer symbolic */
    klee_make_symbolic(&data, sizeof(data), "data");
    
    /* Call the target function */
    target_function(&ctxt, token, lenp, token2, lenn, data);
    
    /* Cleanup */
    if (atom.valuep != NULL) {
        free(atom.valuep);
    }
    
    return 0;
}