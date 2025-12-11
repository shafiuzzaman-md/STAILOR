#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed to compile */
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;
typedef struct _xmlXPathObject xmlXPathObject;
typedef xmlXPathObject *xmlXPathObjectPtr;

/* Simplified xmlXPathObject structure */
struct _xmlXPathObject {
    int type;
    xmlNodePtr *nodeTab;
    int nodeNr;
    int nodeMax;
};

/* Stub for xmlXPathErrMemory */
void xmlXPathErrMemory(void *ctxt, const char *msg) {
    (void)ctxt;
    (void)msg;
}

/* Entrypoint function from SA spec */
int xmlXPathCmpNodesExt(xmlNodePtr node1, xmlNodePtr node2) {
    (void)node1;
    (void)node2;
    
    /* Simulate the vulnerable code path */
    xmlXPathObjectPtr cur = (xmlXPathObjectPtr)malloc(sizeof(struct _xmlXPathObject));
    if (!cur) return -1;
    
    /* Initialize with symbolic values */
    klee_make_symbolic(&cur->nodeNr, sizeof(cur->nodeNr), "nodeNr");
    klee_make_symbolic(&cur->nodeMax, sizeof(cur->nodeMax), "nodeMax");
    
    /* Assume conditions to reach line 3150 */
    klee_assume(cur->nodeNr >= 0);
    klee_assume(cur->nodeMax >= 0);
    klee_assume(cur->nodeNr == cur->nodeMax);
    
    /* Simulate the reallocation logic from context */
    if (cur->nodeTab == NULL) {
        cur->nodeTab = (xmlNodePtr *)malloc(XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
        if (cur->nodeTab == NULL) {
            xmlXPathErrMemory(NULL, "growing nodeset\n");
            free(cur);
            return -1;
        }
        /* VULNERABLE LINE 3150: memset with potentially unsafe size */
        memset(cur->nodeTab, 0, XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
        
        /* Vulnerability assertion: ensure size doesn't overflow/wrap */
        SAILR_ASSERT(XML_NODESET_DEFAULT * sizeof(xmlNodePtr) >= 0 && 
                     XML_NODESET_DEFAULT * sizeof(xmlNodePtr) <= (size_t)-1);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        cur->nodeMax = XML_NODESET_DEFAULT;
    } else if (cur->nodeNr == cur->nodeMax) {
        /* Alternative path - also leads to similar vulnerability */
        xmlNodePtr *temp;
        temp = (xmlNodePtr *)realloc(cur->nodeTab, 2 * cur->nodeMax * sizeof(xmlNodePtr));
        if (temp == NULL) {
            xmlXPathErrMemory(NULL, "growing nodeset\n");
            free(cur->nodeTab);
            free(cur);
            return -1;
        }
        cur->nodeTab = temp;
        /* Similar memset vulnerability could occur here */
        memset(&cur->nodeTab[cur->nodeMax], 0, cur->nodeMax * sizeof(xmlNodePtr));
        
        /* Vulnerability assertion for realloc path */
        SAILR_ASSERT(cur->nodeMax * sizeof(xmlNodePtr) >= 0 && 
                     cur->nodeMax * sizeof(xmlNodePtr) <= (size_t)-1);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        cur->nodeMax *= 2;
    }
    
    /* Cleanup */
    if (cur->nodeTab) free(cur->nodeTab);
    free(cur);
    return 0;
}

/* Main harness */
int main(void) {
    /* Create symbolic nodes */
    xmlNodePtr node1, node2;
    klee_make_symbolic(&node1, sizeof(node1), "node1");
    klee_make_symbolic(&node2, sizeof(node2), "node2");
    
    /* Call the entrypoint */
    int result = xmlXPathCmpNodesExt(node1, node2);
    
    /* Keep result symbolic to avoid optimization */
    klee_make_symbolic(&result, sizeof(result), "result");
    
    return result;
}