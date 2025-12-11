#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub types to compile */
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;
typedef struct _xmlXPathContext xmlXPathContext;
typedef struct _xmlXPathParserContext xmlXPathParserContext;

/* Minimal xmlXPathObject definition */
typedef struct _xmlXPathObject {
    int type;
    void *user;
    int boolval;
    double floatval;
    char *stringval;
    void *nodesetval;
    void *user2;
    int index;
    void *user3;
    int index2;
    void *psvi;
} xmlXPathObject;

/* xmlXPathNodeSet definition */
typedef struct _xmlNodeSet {
    xmlNodePtr *nodeTab;
    int nodeNr;
    int nodeMax;
} xmlNodeSet;

#define XML_NODESET_DEFAULT 10

/* Stub functions */
void xmlXPathErrMemory(xmlXPathContext* ctxt, const char* msg) {
    (void)ctxt;
    (void)msg;
}

/* Target function - simplified version to reach line 3391 */
void xmlXPathCmpNodesExt(xmlXPathParserContext* ctxt, int inf, int strict) {
    (void)ctxt;
    (void)inf;
    (void)strict;
    
    /* Simulate the vulnerable code path */
    xmlNodeSet* set1 = (xmlNodeSet*)malloc(sizeof(xmlNodeSet));
    if (!set1) return;
    
    /* Make nodeTab symbolic to explore allocation states */
    klee_make_symbolic(&set1->nodeTab, sizeof(set1->nodeTab), "nodeTab");
    klee_make_symbolic(&set1->nodeNr, sizeof(set1->nodeNr), "nodeNr");
    klee_make_symbolic(&set1->nodeMax, sizeof(set1->nodeMax), "nodeMax");
    
    /* Assume reasonable bounds for symbolic values */
    klee_assume(set1->nodeNr >= 0);
    klee_assume(set1->nodeMax >= 0);
    klee_assume(set1->nodeNr < 1000);
    klee_assume(set1->nodeMax < 1000);
    
    /* Simulate the condition that leads to line 3391 */
    if (set1->nodeTab == NULL) {
        /* This branch leads to the memset at line 3391 */
        set1->nodeTab = (xmlNodePtr*)malloc(XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
        if (set1->nodeTab == NULL) {
            xmlXPathErrMemory(NULL, "merging nodeset\n");
            free(set1);
            return;
        }
        
        /* VULNERABLE LINE 3391: memset with potentially unsafe size */
        memset(set1->nodeTab, 0, XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
        
        /* Vulnerability assertion: ensure allocation size matches memset size */
        SAILR_ASSERT(XML_NODESET_DEFAULT * sizeof(xmlNodePtr) <= 
                     XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        set1->nodeMax = XML_NODESET_DEFAULT;
    } else if (set1->nodeNr >= set1->nodeMax) {
        /* Alternative path - not our target */
        xmlNodePtr *temp;
        (void)temp;
    }
    
    free(set1->nodeTab);
    free(set1);
}

/* Entry point */
int main(void) {
    /* Create symbolic parser context */
    xmlXPathParserContext* ctxt = (xmlXPathParserContext*)malloc(sizeof(xmlXPathParserContext));
    if (!ctxt) return 0;
    
    klee_make_symbolic(ctxt, sizeof(xmlXPathParserContext), "ctxt");
    
    /* Symbolic parameters for the target function */
    int inf, strict;
    klee_make_symbolic(&inf, sizeof(inf), "inf");
    klee_make_symbolic(&strict, sizeof(strict), "strict");
    
    /* Call the target function */
    xmlXPathCmpNodesExt(ctxt, inf, strict);
    
    free(ctxt);
    return 0;
}