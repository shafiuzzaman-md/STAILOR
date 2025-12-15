#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub types to compile */
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;

typedef struct _xmlNodeSet {
    xmlNodePtr *nodeTab;
    int nodeMax;
} xmlNodeSet;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlFree */
void xmlFree(void *ptr) {
    free(ptr);
}

/* Stub for PyxmlNode_Get - returns NULL */
xmlNodePtr PyxmlNode_Get(void *pyobj) {
    return NULL;
}

/* Stub for PyTuple_GET_ITEM */
void* PyTuple_GET_ITEM(void *tuple, int idx) {
    return NULL;
}

/* Function that contains the vulnerable memset call */
int target_function(xmlNodeSet *nodeSet, void *py_nodeset, int is_tuple) {
    if (nodeSet == NULL) {
        return -1;
    }
    
    nodeSet->nodeTab = (xmlNodePtr *)xmlMalloc(nodeSet->nodeMax * sizeof(xmlNodePtr));
    if (nodeSet->nodeTab == NULL) {
        xmlFree(nodeSet);
        return -1;
    }
    
    /* VULNERABLE LINE: memset with nodeSet->nodeMax * sizeof(xmlNodePtr) */
    memset(nodeSet->nodeTab, 0, nodeSet->nodeMax * sizeof(xmlNodePtr));
    
    /* Vulnerability assertion: ensure multiplication doesn't overflow */
    SAILR_ASSERT(nodeSet->nodeMax <= SIZE_MAX / sizeof(xmlNodePtr));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Continue with rest of function to avoid early return */
    {
        int idx;
        for (idx = 0; idx < nodeSet->nodeMax; ++idx) {
            xmlNodePtr pynode = PyxmlNode_Get(
                is_tuple ? PyTuple_GET_ITEM(py_nodeset, idx) : NULL);
            if (pynode) {
                nodeSet->nodeTab[idx] = pynode;
            }
        }
    }
    
    return 0;
}

int main(void) {
    xmlNodeSet *nodeSet = (xmlNodeSet *)malloc(sizeof(xmlNodeSet));
    if (!nodeSet) {
        return 0;
    }
    
    /* Make nodeMax symbolic to explore different values */
    klee_make_symbolic(&nodeSet->nodeMax, sizeof(nodeSet->nodeMax), "nodeMax");
    
    /* Assume reasonable bounds for nodeMax to avoid trivial failures */
    klee_assume(nodeSet->nodeMax >= 0);
    klee_assume(nodeSet->nodeMax <= 1000000); /* Upper bound for exploration */
    
    /* Initialize other fields */
    nodeSet->nodeTab = NULL;
    
    /* Call the target function with dummy parameters */
    int result = target_function(nodeSet, NULL, 0);
    
    /* Cleanup */
    if (nodeSet->nodeTab) {
        free(nodeSet->nodeTab);
    }
    free(nodeSet);
    
    return 0;
}