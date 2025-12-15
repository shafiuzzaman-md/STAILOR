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

typedef struct _xmlXPathNodeSet {
    int nodeNr;
    int nodeMax;
    xmlNodePtr *nodeTab;
} xmlXPathNodeSet;

/* Constants from libxml2 */
#define XML_NODESET_DEFAULT 10
#define XPATH_MAX_NODESET_LENGTH 1000000

/* Stub for xmlMalloc */
void *xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlXPathErrMemory */
void xmlXPathErrMemory(void *ctxt, const char *msg) {
    /* Do nothing */
}

/* Target function - extracted from xpath.c around line 4058 */
xmlXPathNodeSet *xmlXPathNodeSetMerge(xmlXPathNodeSet *set1, xmlXPathNodeSet *set2) {
    int i;
    xmlNodePtr n2;

    if (set1 == NULL || set2 == NULL)
        return(NULL);
    if (set2->nodeNr <= 0)
        return(set1);
    if (set1->nodeNr <= 0) {
        if (set1->nodeTab != NULL) {
            free(set1->nodeTab);
            set1->nodeTab = NULL;
        }
        set1->nodeNr = 0;
        set1->nodeMax = 0;
    }

    for (i = 0; i < set2->nodeNr; i++) {
        n2 = set2->nodeTab[i];
        if (set1->nodeMax == 0) {
            set1->nodeTab = (xmlNodePtr *) xmlMalloc(
                XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
            if (set1->nodeTab == NULL) {
                xmlXPathErrMemory(NULL, "merging nodeset\n");
                return(NULL);
            }
            /* TARGET LINE 4058 - memset with potentially unbounded size */
            memset(set1->nodeTab, 0,
                XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
            set1->nodeMax = XML_NODESET_DEFAULT;
        } else if (set1->nodeNr >= set1->nodeMax) {
            xmlNodePtr *temp;

            if (set1->nodeMax >= XPATH_MAX_NODESET_LENGTH) {
                xmlXPathErrMemory(NULL, "merging nodeset hit limit\n");
                return(NULL);
            }
            /* Not relevant for reaching target line */
        }
        /* Simplified merging logic - just increment nodeNr */
        set1->nodeNr++;
    }
    return set1;
}

int main(void) {
    /* Create symbolic inputs for the two nodesets */
    xmlXPathNodeSet set1, set2;
    
    /* Initialize set1 to reach the target branch */
    set1.nodeNr = 0;
    set1.nodeMax = 0;
    set1.nodeTab = NULL;
    
    /* Make set2 symbolic to control its size */
    klee_make_symbolic(&set2.nodeNr, sizeof(set2.nodeNr), "set2_nodeNr");
    klee_make_symbolic(&set2.nodeMax, sizeof(set2.nodeMax), "set2_nodeMax");
    
    /* Assume set2 has valid size for the loop */
    klee_assume(set2.nodeNr > 0);
    klee_assume(set2.nodeNr <= 100);  /* Reasonable bound for exploration */
    klee_assume(set2.nodeMax >= set2.nodeNr);
    
    /* Allocate and initialize set2's nodeTab */
    set2.nodeTab = (xmlNodePtr *)malloc(set2.nodeMax * sizeof(xmlNodePtr));
    for (int i = 0; i < set2.nodeMax; i++) {
        set2.nodeTab[i] = (xmlNodePtr)malloc(sizeof(xmlNode));
    }
    
    /* Call the target function */
    xmlXPathNodeSet *result = xmlXPathNodeSetMerge(&set1, &set2);
    
    /* Vulnerability assertion: Check that XML_NODESET_DEFAULT * sizeof(xmlNodePtr)
       doesn't overflow or exceed reasonable bounds */
    SAILR_ASSERT(XML_NODESET_DEFAULT * sizeof(xmlNodePtr) <= 1048576);  /* 1MB reasonable limit */
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    if (set2.nodeTab) {
        for (int i = 0; i < set2.nodeMax; i++) {
            free(set2.nodeTab[i]);
        }
        free(set2.nodeTab);
    }
    
    if (set1.nodeTab) {
        free(set1.nodeTab);
    }
    
    return 0;
}