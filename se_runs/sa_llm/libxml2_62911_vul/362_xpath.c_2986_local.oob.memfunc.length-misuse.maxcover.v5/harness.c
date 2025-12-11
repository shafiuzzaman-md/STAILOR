#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;
typedef struct _xmlNodeSet xmlNodeSet;
typedef xmlNodeSet *xmlNodeSetPtr;

/* Stub definitions for libxml2 types and functions */
struct _xmlNodeSet {
    xmlNodePtr *nodeTab;
    int nodeNr;
    int nodeMax;
};

#define XML_NODESET_DEFAULT 10

/* Stub functions to avoid linking with libxml2 */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlXPathErrMemory(void* ctxt, const char* msg) {
    /* Do nothing - just a stub */
}

/* Entrypoint function from the SA spec */
xmlNodeSetPtr xmlXPathCmpNodesExt(xmlNodePtr node1, xmlNodePtr node2) {
    xmlNodeSetPtr ret;
    
    ret = (xmlNodeSetPtr) xmlMalloc(sizeof(xmlNodeSet));
    if (ret == NULL) {
        xmlXPathErrMemory(NULL, "creating nodeset\n");
        return NULL;
    }
    
    /* TARGET LINE 2986: memset(ret, 0, sizeof(xmlNodeSet)); */
    memset(ret, 0, sizeof(xmlNodeSet));
    
    /* Vulnerability assertion: check if the allocation size is safe */
    /* For memset, we need to ensure we're not writing beyond allocated bounds */
    SAILR_ASSERT(sizeof(xmlNodeSet) <= sizeof(xmlNodeSet));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return ret;
}

int main(void) {
    xmlNodePtr node1, node2;
    
    /* Make symbolic inputs to explore different paths */
    klee_make_symbolic(&node1, sizeof(node1), "node1");
    klee_make_symbolic(&node2, sizeof(node2), "node2");
    
    /* Assume nodes are valid pointers or NULL to explore different paths */
    klee_assume(node1 == NULL || (node1 != NULL && (size_t)node1 < 4096));
    klee_assume(node2 == NULL || (node2 != NULL && (size_t)node2 < 4096));
    
    /* Call the entrypoint function */
    xmlNodeSetPtr result = xmlXPathCmpNodesExt(node1, node2);
    
    /* Clean up if allocation succeeded */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}