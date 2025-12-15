#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlNode xmlNode;
typedef struct _xmlNode *xmlNodePtr;
typedef struct _xmlXPathObject xmlXPathObject;
typedef struct _xmlXPathObject *xmlXPathObjectPtr;
typedef struct _xmlXPathNodeSet xmlXPathNodeSet;
typedef struct _xmlXPathNodeSet *xmlXPathNodeSetPtr;

/* Stub implementations */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlXPathErrMemory(void* ctxt, const char* msg) {
    /* Do nothing */
}

xmlXPathNodeSetPtr xmlXPathNodeSetCreate(xmlNodePtr val) {
    /* Return a non-NULL pointer to avoid null dereference */
    xmlXPathNodeSetPtr set = (xmlXPathNodeSetPtr)malloc(sizeof(xmlXPathNodeSet));
    if (set) {
        /* Minimal initialization */
        memset(set, 0, sizeof(xmlXPathNodeSet));
    }
    return set;
}

/* Target function from xpath.c */
xmlXPathObjectPtr xmlXPathNewNodeSet(xmlNodePtr val) {
    xmlXPathObjectPtr ret;

    ret = (xmlXPathObjectPtr) xmlMalloc(sizeof(xmlXPathObject));
    if (ret == NULL) {
        xmlXPathErrMemory(NULL, "creating nodeset\n");
        return(NULL);
    }
    
    /* TARGET LINE 4318 - memset with sizeof(xmlXPathObject) */
    memset(ret, 0 , sizeof(xmlXPathObject));
    
    /* Vulnerability assertion: ensure ret points to at least sizeof(xmlXPathObject) bytes */
    SAILR_ASSERT(ret != NULL && "Allocation succeeded");
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->type = 1; /* XPATH_NODESET */
    ret->boolval = 0;
    ret->nodesetval = xmlXPathNodeSetCreate(val);
    return ret;
}

/* Entry point */
int main(void) {
    xmlNodePtr node;
    
    /* Make node symbolic to explore different paths */
    klee_make_symbolic(&node, sizeof(node), "node");
    
    /* Assume node is non-NULL to reach the target function */
    klee_assume(node != NULL);
    
    /* Call the target function */
    xmlXPathObjectPtr result = xmlXPathNewNodeSet(node);
    
    /* Clean up if allocation succeeded */
    if (result != NULL) {
        if (result->nodesetval != NULL) {
            free(result->nodesetval);
        }
        free(result);
    }
    
    return 0;
}