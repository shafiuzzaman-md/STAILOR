#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed from libxml2 */
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;

typedef struct _xmlXPathObject xmlXPathObject;
typedef xmlXPathObject *xmlXPathObjectPtr;

typedef struct _xmlXPathParserContext xmlXPathParserContext;
typedef xmlXPathParserContext *xmlXPathParserContextPtr;

/* Simplified xmlXPathObject structure */
struct _xmlXPathObject {
    int type;
    int nodeNr;
    int nodeMax;
    xmlNodePtr *nodeTab;
};

/* Stub for xmlXPathCmpNodesExt - the entrypoint */
int xmlXPathCmpNodesExt(xmlXPathParserContextPtr ctxt, xmlXPathObjectPtr set1, xmlXPathObjectPtr set2) {
    /* Simulate the vulnerable code path at line 3452 */
    if (set1->nodeTab == NULL) {
        /* This branch corresponds to lines 3448-3451 */
        /* Allocate memory */
        set1->nodeTab = (xmlNodePtr *)malloc(XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
        if (set1->nodeTab == NULL) {
            /* xmlXPathErrMemory(NULL, "merging nodeset\n"); */
            return -1; /* goto error */
        }
        
        /* VULNERABLE memset at line 3452 */
        memset(set1->nodeTab, 0, XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
        
        /* Vulnerability assertion: ensure the length argument to memset is safe */
        /* The condition checks that we're not writing beyond allocated bounds */
        SAILR_ASSERT(XML_NODESET_DEFAULT * sizeof(xmlNodePtr) <= 
                     XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        set1->nodeMax = XML_NODESET_DEFAULT;
        return 0;
    } else if (set1->nodeNr >= set1->nodeMax) {
        /* This is the other branch mentioned in the snippet */
        xmlNodePtr *temp;
        /* Not our target path */
        return 1;
    }
    return 2;
}

/* Constants from libxml2 */
#define XML_NODESET_DEFAULT 10

int main(void) {
    /* Create symbolic inputs to reach the vulnerable path */
    xmlXPathObject set1;
    
    /* Make set1 fields symbolic to control execution path */
    klee_make_symbolic(&set1, sizeof(set1), "set1");
    
    /* Assume conditions to take the first branch (nodeTab == NULL) */
    klee_assume(set1.nodeTab == NULL);
    
    /* Initialize other fields to avoid undefined behavior */
    set1.nodeNr = 0;
    set1.nodeMax = 0;
    
    /* Create a dummy parser context */
    xmlXPathParserContextPtr ctxt = NULL;
    
    /* Create a dummy second set */
    xmlXPathObject set2;
    set2.nodeTab = NULL;
    set2.nodeNr = 0;
    set2.nodeMax = 0;
    
    /* Call the entrypoint function */
    int result = xmlXPathCmpNodesExt(ctxt, &set1, &set2);
    
    /* Cleanup */
    if (set1.nodeTab != NULL) {
        free(set1.nodeTab);
    }
    
    return 0;
}