#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;

typedef struct _xmlNodeSet {
    int nodeNr;
    int nodeMax;
    xmlNodePtr *nodeTab;
} xmlNodeSet, *xmlNodeSetPtr;

/* Stub functions to avoid linking with libxml2 */
void xmlXPathErrMemory(void *ctxt, const char *msg) {
    /* Do nothing */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlFree(void *ptr) {
    free(ptr);
}

/* Target function from xpath.c:3587 */
xmlNodeSetPtr xmlXPathNodeSetCreate(xmlNodePtr val) {
    xmlNodeSetPtr ret;

    ret = (xmlNodeSetPtr) xmlMalloc(sizeof(xmlNodeSet));
    if (ret == NULL) {
        xmlXPathErrMemory(NULL, "creating nodeset\n");
        return(NULL);
    }
    /* TARGET LINE 3587: memset(ret, 0, sizeof(xmlNodeSet)); */
    memset(ret, 0, sizeof(xmlNodeSet));
    
    /* Vulnerability assertion: ensure ret points to valid memory of at least sizeof(xmlNodeSet) bytes */
    SAILR_ASSERT(ret != NULL && sizeof(xmlNodeSet) > 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    if (val != NULL) {
        ret->nodeTab = (xmlNodePtr *) xmlMalloc(10 * sizeof(xmlNodePtr));
        if (ret->nodeTab == NULL) {
            xmlXPathErrMemory(NULL, "creating nodeset\n");
            xmlFree(ret);
            return(NULL);
        }
    }
    return ret;
}

int main(void) {
    xmlNodePtr val;
    
    /* Make val symbolic to explore both branches */
    klee_make_symbolic(&val, sizeof(val), "val");
    
    /* Call the target function */
    xmlNodeSetPtr result = xmlXPathNodeSetCreate(val);
    
    /* Clean up if needed */
    if (result) {
        if (result->nodeTab) {
            free(result->nodeTab);
        }
        free(result);
    }
    
    return 0;
}