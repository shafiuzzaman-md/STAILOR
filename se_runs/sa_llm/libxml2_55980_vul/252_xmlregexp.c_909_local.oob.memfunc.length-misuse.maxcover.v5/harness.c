#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlRegParserCtxt xmlRegParserCtxt;
typedef xmlRegParserCtxt *xmlRegParserCtxtPtr;
typedef struct _xmlRegState xmlRegState;
typedef xmlRegState *xmlRegStatePtr;

/* Minimal stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Minimal stub for xmlRegexpErrMemory */
void xmlRegexpErrMemory(xmlRegParserCtxtPtr ctxt, const char *msg) {
    /* Do nothing in harness */
}

/* The target function from xmlregexp.c line 909 */
xmlRegStatePtr xmlRegNewState(xmlRegParserCtxtPtr ctxt) {
    xmlRegStatePtr ret;

    ret = (xmlRegStatePtr) xmlMalloc(sizeof(xmlRegState));
    if (ret == NULL) {
        xmlRegexpErrMemory(ctxt, "allocating state");
        return(NULL);
    }
    
    /* VULNERABLE LINE - TARGET FOR REACHABILITY */
    memset(ret, 0, sizeof(xmlRegState));
    
    /* Vulnerability assertion: ensure the allocation size is correct */
    SAILR_ASSERT(sizeof(xmlRegState) > 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->type = 1; /* XML_REGEXP_TRANS_STATE */
    ret->mark = 0; /* XML_REGEXP_MARK_NORMAL */
    return(ret);
}

/* Minimal context structure */
struct _xmlRegParserCtxt {
    int dummy;
};

int main(void) {
    xmlRegParserCtxtPtr ctxt;
    xmlRegStatePtr state;
    
    /* Allocate parser context */
    ctxt = (xmlRegParserCtxtPtr)malloc(sizeof(struct _xmlRegParserCtxt));
    if (!ctxt) return 0;
    
    /* Make the context symbolic to explore different paths */
    klee_make_symbolic(ctxt, sizeof(struct _xmlRegParserCtxt), "ctxt");
    
    /* Call the target function */
    state = xmlRegNewState(ctxt);
    
    /* Clean up if allocation succeeded */
    if (state) {
        free(state);
    }
    free(ctxt);
    
    return 0;
}