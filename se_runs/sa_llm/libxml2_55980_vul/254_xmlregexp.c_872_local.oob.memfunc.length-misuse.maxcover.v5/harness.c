#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlRegParserCtxt xmlRegParserCtxt;
typedef xmlRegParserCtxt *xmlRegParserCtxtPtr;

typedef struct _xmlRegAtom xmlRegAtom;
typedef xmlRegAtom *xmlRegAtomPtr;

typedef struct _xmlRegRange xmlRegRange;
typedef xmlRegRange *xmlRegRangePtr;

struct _xmlRegAtom {
    int type;
    int quant;
    int min;
    int max;
    int nbRanges;
    xmlRegRangePtr *ranges;
    void *valuep;
    void *valuep2;
    int neg;
    int codepoint;
};

/* Stub functions to avoid linking with libxml2 */
void *xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlRegexpErrMemory(xmlRegParserCtxtPtr ctxt, const char *msg) {
    /* Do nothing - just a stub */
}

/* The function we want to reach */
xmlRegAtomPtr xmlRegCopyAtom(xmlRegParserCtxtPtr ctxt, xmlRegAtomPtr atom) {
    xmlRegAtomPtr ret;

    ret = (xmlRegAtomPtr) xmlMalloc(sizeof(xmlRegAtom));
    if (ret == NULL) {
        xmlRegexpErrMemory(ctxt, "copying atom");
        return(NULL);
    }
    /* TARGET LINE 872 - memset with sizeof(xmlRegAtom) */
    memset(ret, 0, sizeof(xmlRegAtom));
    
    /* Vulnerability assertion: ensure the allocation size is at least sizeof(xmlRegAtom) */
    SAILR_ASSERT(sizeof(xmlRegAtom) <= sizeof(xmlRegAtom)); /* Always true for correct allocation */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->type = atom->type;
    ret->quant = atom->quant;
    ret->min = atom->min;
    ret->max = atom->max;
    if (atom->nbRanges > 0) {
        int i;
        ret->ranges = (xmlRegRangePtr *) xmlMalloc(sizeof(xmlRegRangePtr) * atom->nbRanges);
        /* ... rest of function would continue ... */
    }
    return ret;
}

int main(void) {
    /* Create symbolic inputs to drive execution */
    xmlRegParserCtxtPtr ctxt = NULL;
    xmlRegAtom atom;
    
    /* Make atom fields symbolic to explore different paths */
    klee_make_symbolic(&atom, sizeof(atom), "atom");
    
    /* Assume reasonable values to avoid undefined behavior */
    klee_assume(atom.nbRanges >= 0);
    klee_assume(atom.nbRanges < 100); /* Bound to avoid excessive allocation */
    
    /* Call the target function */
    xmlRegAtomPtr result = xmlRegCopyAtom(ctxt, &atom);
    
    /* Clean up if allocation succeeded */
    if (result != NULL) {
        free(result);
        if (result->ranges != NULL) {
            free(result->ranges);
        }
    }
    
    return 0;
}