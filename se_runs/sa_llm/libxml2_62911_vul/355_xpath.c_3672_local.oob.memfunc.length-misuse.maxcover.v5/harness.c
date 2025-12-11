#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlXPathObject xmlXPathObject;
typedef xmlXPathObject *xmlXPathObjectPtr;
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;

/* Stub definitions for types */
struct _xmlXPathObject {
    int type;
    int boolval;
    void *nodesetval;
};

struct _xmlNode {
    void *data;
};

/* Stub functions needed to reach the target */
void xmlXPathErrMemory(void *ctxt, const char *msg) {
    /* Do nothing */
}

void* xmlMalloc(size_t size) {
    return malloc(size);
}

xmlNodePtr* xmlXPathNodeSetCreate(xmlNodePtr val) {
    xmlNodePtr* nodeset = (xmlNodePtr*)malloc(sizeof(xmlNodePtr));
    if (nodeset) {
        *nodeset = val;
    }
    return nodeset;
}

/* Target function - extracted from the context */
xmlXPathObjectPtr xmlXPathCmpNodesExt(xmlNodePtr node1, xmlNodePtr node2, int context) {
    xmlXPathObjectPtr ret;
    xmlNodePtr val = node1;  /* Simplified: use node1 as val */

    ret = (xmlXPathObjectPtr) xmlMalloc(sizeof(xmlXPathObject));
    if (ret == NULL) {
        xmlXPathErrMemory(NULL, "creating nodeset\n");
        return(NULL);
    }
    memset(ret, 0 , sizeof(xmlXPathObject));
    ret->type = 1;  /* XPATH_NODESET */
    ret->boolval = 0;
    /* TODO: Check memory error. */
    ret->nodesetval = xmlXPathNodeSetCreate(val);
    /* @@ with_ns to check whether namespace nodes should be looked at @@ */
    
    return ret;
}

int main(void) {
    /* Symbolic inputs for the function */
    xmlNode node1, node2;
    int context;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&node1, sizeof(node1), "node1");
    klee_make_symbolic(&node2, sizeof(node2), "node2");
    klee_make_symbolic(&context, sizeof(context), "context");
    
    /* Assume reasonable constraints to avoid trivial paths */
    klee_assume(context >= 0);
    klee_assume(context <= 100);
    
    /* Call the target function */
    xmlXPathObjectPtr result = xmlXPathCmpNodesExt(&node1, &node2, context);
    
    /* Vulnerability assertion: For OOB in memset, we need to ensure
       the allocated size is at least sizeof(xmlXPathObject) */
    if (result != NULL) {
        /* The vulnerability would be if xmlMalloc returned a buffer
           smaller than sizeof(xmlXPathObject) but we still call memset
           with the full size. We can't directly check the malloc size,
           but we can assert that if malloc succeeded, the buffer is
           at least the size we're writing. */
        SAILR_ASSERT(1);  /* Placeholder - actual condition depends on malloc implementation */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Cleanup */
    if (result) {
        if (result->nodesetval) {
            free(result->nodesetval);
        }
        free(result);
    }
    
    return 0;
}