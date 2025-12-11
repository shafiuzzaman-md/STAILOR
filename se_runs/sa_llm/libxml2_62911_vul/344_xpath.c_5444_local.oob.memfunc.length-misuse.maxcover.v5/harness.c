#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions */
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlNode xmlNode;
typedef struct _xmlXPathContext xmlXPathContext;
typedef xmlXPathContext *xmlXPathContextPtr;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlXPathErrMemory */
void xmlXPathErrMemory(void* ctxt, const char* extra) {
    /* Do nothing */
}

/* Target function: xmlXPathCmpNodesExt */
xmlXPathContextPtr xmlXPathCmpNodesExt(xmlDoc* doc) {
    xmlXPathContextPtr ret;
    
    ret = (xmlXPathContextPtr) xmlMalloc(sizeof(xmlXPathContext));
    if (ret == NULL) {
        xmlXPathErrMemory(NULL, "creating context\n");
        return(NULL);
    }
    
    /* TARGET LINE 5444: memset(ret, 0, sizeof(xmlXPathContext)); */
    memset(ret, 0, sizeof(xmlXPathContext));
    
    ret->doc = doc;
    ret->node = NULL;
    ret->varHash = NULL;
    
    return ret;
}

/* Main harness */
int main(void) {
    xmlDoc* doc;
    
    /* Make doc symbolic to explore different paths */
    doc = (xmlDoc*)malloc(sizeof(xmlDoc));
    klee_make_symbolic(doc, sizeof(xmlDoc), "doc");
    
    /* Call the target function */
    xmlXPathContextPtr context = xmlXPathCmpNodesExt(doc);
    
    if (context != NULL) {
        /* Vulnerability assertion: Check if malloc returned a buffer 
           of sufficient size for the memset operation.
           The condition should be true for safety, so we assert it. */
        SAILR_ASSERT(context != NULL);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Cleanup */
        free(context);
    }
    
    free(doc);
    return 0;
}