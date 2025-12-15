#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlRegParserCtxt xmlRegParserCtxt;
typedef xmlRegParserCtxt *xmlRegParserCtxtPtr;

typedef struct _xmlRegexp xmlRegexp;
typedef xmlRegexp *xmlRegexpPtr;

struct _xmlRegexp {
    char *string;
    int nbStates;
    void *states;
    int nbAtoms;
    void *atoms;
    int nbCounters;
    void *counters;
    int determinist;
    /* Other fields omitted for brevity */
};

struct _xmlRegParserCtxt {
    char *string;
    int nbStates;
    void *states;
    int nbAtoms;
    void *atoms;
    int nbCounters;
    void *counters;
    int determinist;
    /* Other fields omitted for brevity */
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    return ptr;
}

/* Stub for xmlRegexpErrMemory */
void xmlRegexpErrMemory(xmlRegParserCtxtPtr ctxt, const char *msg) {
    /* Do nothing */
}

/* Target function from xmlregexp.c:457 */
xmlRegexpPtr xmlRegEpxFromParse(xmlRegParserCtxtPtr ctxt) {
    xmlRegexpPtr ret;

    ret = (xmlRegexpPtr) xmlMalloc(sizeof(xmlRegexp));
    if (ret == NULL) {
        xmlRegexpErrMemory(ctxt, "compiling regexp");
        return(NULL);
    }
    
    /* TARGET LINE 465: memset(ret, 0, sizeof(xmlRegexp)); */
    /* Vulnerability assertion: ensure ret points to valid memory of at least sizeof(xmlRegexp) bytes */
    SAILR_ASSERT(ret != NULL && "SAILR_VULN_ASSERT");
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(ret, 0, sizeof(xmlRegexp));
    ret->string = ctxt->string;
    ret->nbStates = ctxt->nbStates;
    ret->states = ctxt->states;
    ret->nbAtoms = ctxt->nbAtoms;
    ret->atoms = ctxt->atoms;
    ret->nbCounters = ctxt->nbCounters;
    ret->counters = ctxt->counters;
    ret->determinist = ctxt->determinist;
    
    return ret;
}

/* Entry point */
int main(void) {
    xmlRegParserCtxt ctxt;
    xmlRegParserCtxtPtr ctxt_ptr = &ctxt;
    
    /* Initialize parser context fields to avoid null dereferences */
    ctxt.string = NULL;
    ctxt.nbStates = 0;
    ctxt.states = NULL;
    ctxt.nbAtoms = 0;
    ctxt.atoms = NULL;
    ctxt.nbCounters = 0;
    ctxt.counters = NULL;
    ctxt.determinist = 0;
    
    /* Call the target function */
    xmlRegexpPtr result = xmlRegEpxFromParse(ctxt_ptr);
    
    /* Clean up if allocation succeeded */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}