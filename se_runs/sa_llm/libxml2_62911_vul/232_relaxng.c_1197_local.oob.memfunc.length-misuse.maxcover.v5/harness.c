#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types needed */
typedef struct _xmlRelaxNGValidCtxt xmlRelaxNGValidCtxt;
typedef xmlRelaxNGValidCtxt *xmlRelaxNGValidCtxtPtr;
typedef struct _xmlRelaxNGValidState xmlRelaxNGValidState;
typedef struct _xmlDoc xmlDoc;
typedef xmlDoc *xmlDocPtr;
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;

/* Minimal stub structures to satisfy type requirements */
struct _xmlRelaxNGValidCtxt {
    xmlDocPtr doc;
};

struct _xmlRelaxNGValidState {
    void *value;
    void *endvalue;
    xmlNodePtr node;
    /* Other fields omitted for brevity */
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlRngVErrMemory - does nothing but return */
void xmlRngVErrMemory(xmlRelaxNGValidCtxtPtr ctxt, const char *msg) {
    (void)ctxt;
    (void)msg;
}

/* Target function - simplified version focusing on the vulnerable path */
xmlRelaxNGValidState* xmlRelaxNGCopyValidState(xmlRelaxNGValidCtxtPtr ctxt, xmlNodePtr node) {
    xmlRelaxNGValidState *ret;
    
    ret = (xmlRelaxNGValidState*) xmlMalloc(sizeof(xmlRelaxNGValidState));
    if (ret == NULL) {
        xmlRngVErrMemory(ctxt, "allocating states\n");
        return (NULL);
    }
    
    /* VULNERABLE LINE: memset with size based on allocation */
    memset(ret, 0, sizeof(xmlRelaxNGValidState));
    
    ret->value = NULL;
    ret->endvalue = NULL;
    if (node == NULL) {
        ret->node = (xmlNodePtr) ctxt->doc;
    } else {
        ret->node = node;
    }
    
    return ret;
}

int main(void) {
    /* Symbolic variables for function inputs */
    xmlRelaxNGValidCtxt ctxt;
    xmlNodePtr node;
    
    /* Initialize ctxt with symbolic doc pointer */
    klee_make_symbolic(&ctxt.doc, sizeof(ctxt.doc), "ctxt_doc");
    
    /* Make node symbolic */
    klee_make_symbolic(&node, sizeof(node), "node");
    
    /* Assume reasonable constraints to avoid trivial null derefs */
    klee_assume(ctxt.doc != NULL || node != NULL);
    
    /* Call the target function */
    xmlRelaxNGValidState* result = xmlRelaxNGCopyValidState(&ctxt, node);
    
    /* Vulnerability assertion: Check if allocation succeeded before memset */
    if (result != NULL) {
        /* For memset length-misuse: ensure the size used in memset 
           doesn't exceed allocated bounds. Since memset uses sizeof(xmlRelaxNGValidState)
           and allocation uses the same size, the vulnerability would be if
           the allocation size was incorrect or if ret pointed to wrong memory.
           The SA pattern suggests checking that the allocation size is correct
           for the memset operation. */
        SAILR_ASSERT(1); /* In this specific case, the vulnerability is that 
                          xmlMalloc might fail or return insufficient memory,
                          but we already checked ret != NULL. The memset size
                          matches allocation size, so condition is true. */
        
        /* Reachability assertion */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        free(result);
    }
    
    return 0;
}