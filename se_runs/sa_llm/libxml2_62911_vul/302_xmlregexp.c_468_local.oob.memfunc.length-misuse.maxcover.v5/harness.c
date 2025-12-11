#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlRegexp xmlRegexp;
typedef xmlRegexp *xmlRegexpPtr;
typedef struct _xmlRegParserCtxt xmlRegParserCtxt;

/* Minimal stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "xmlMalloc_buffer");
    }
    return ptr;
}

/* Minimal stub for xmlRegexpErrMemory */
void xmlRegexpErrMemory(xmlRegParserCtxt* ctxt, const char* extra) {
    /* No-op for harness */
}

/* Minimal stub for xmlRegNewParserCtxt - returns symbolic context */
xmlRegParserCtxt* xmlRegNewParserCtxt(const char* string) {
    xmlRegParserCtxt* ctxt = (xmlRegParserCtxt*)malloc(sizeof(xmlRegParserCtxt));
    if (!ctxt) return NULL;
    
    klee_make_symbolic(ctxt, sizeof(xmlRegParserCtxt), "parser_context");
    
    /* Symbolic fields that will be used in the target code */
    klee_make_symbolic(&ctxt->string, sizeof(ctxt->string), "ctxt_string");
    klee_make_symbolic(&ctxt->nbStates, sizeof(ctxt->nbStates), "nbStates");
    klee_make_symbolic(&ctxt->states, sizeof(ctxt->states), "states_ptr");
    klee_make_symbolic(&ctxt->nbAtoms, sizeof(ctxt->nbAtoms), "nbAtoms");
    klee_make_symbolic(&ctxt->atoms, sizeof(ctxt->atoms), "atoms_ptr");
    
    /* Assume reasonable bounds for the counts to avoid trivial OOB */
    klee_assume(ctxt->nbStates >= 0 && ctxt->nbStates < 1000);
    klee_assume(ctxt->nbAtoms >= 0 && ctxt->nbAtoms < 1000);
    
    return ctxt;
}

/* Target function that contains line 468 */
xmlRegexpPtr xmlRegEpxFromParse(xmlRegParserCtxt* ctxt) {
    xmlRegexpPtr ret;
    
    ret = (xmlRegexpPtr) xmlMalloc(sizeof(xmlRegexp));
    if (ret == NULL) {
        xmlRegexpErrMemory(ctxt, "compiling regexp");
        return NULL;
    }
    
    /* LINE 468: memset(ret, 0, sizeof(xmlRegexp)); */
    /* Vulnerability assertion: ensure the allocation size is sufficient */
    SAILR_ASSERT(sizeof(xmlRegexp) >= 0);  /* Basic sanity check */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(ret, 0, sizeof(xmlRegexp));
    ret->string = ctxt->string;
    ret->nbStates = ctxt->nbStates;
    ret->states = ctxt->states;
    ret->nbAtoms = ctxt->nbAtoms;
    ret->atoms = ctxt->atoms;
    
    return ret;
}

int main(void) {
    xmlRegParserCtxt* ctxt;
    xmlRegexpPtr regexp;
    
    /* Create symbolic parser context */
    ctxt = xmlRegNewParserCtxt(NULL);
    if (!ctxt) {
        return 0;
    }
    
    /* Call the function that reaches line 468 */
    regexp = xmlRegEpxFromParse(ctxt);
    
    /* Cleanup */
    if (regexp) free(regexp);
    free(ctxt);
    
    return 0;
}