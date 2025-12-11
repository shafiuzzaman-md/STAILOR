#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include "klee/klee.h"
#include <stdlib.h>
#include <string.h>

typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;

typedef struct _xmlXPathObject xmlXPathObject;
typedef xmlXPathObject *xmlXPathObjectPtr;

typedef struct _xmlXPathContext xmlXPathContext;
typedef xmlXPathContext *xmlXPathContextPtr;

#define XML_NODESET_DEFAULT 10

typedef struct _xmlXPathNodeSet {
    int nodeNr;
    int nodeMax;
    xmlNodePtr *nodeTab;
} xmlXPathNodeSet;

typedef xmlXPathNodeSet *xmlXPathNodeSetPtr;

void xmlXPathErrMemory(void *ctxt, const char *msg) {
}

int xmlXPathCmpNodesExt(xmlNodePtr node1, xmlNodePtr node2) {
    xmlXPathNodeSet cur;
    int return_val;

    klee_make_symbolic(&return_val, sizeof(return_val), "return_val");
    klee_assume(return_val >= 0);

    cur.nodeNr = return_val;
    cur.nodeMax = 0;
    cur.nodeTab = NULL;

    if (cur.nodeTab == NULL) {
        cur.nodeTab = (xmlNodePtr *)malloc(XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
        if (cur.nodeTab == NULL) {
            xmlXPathErrMemory(NULL, "growing nodeset\n");
            return -1;
        }
        memset(cur.nodeTab, 0, XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
        cur.nodeMax = XML_NODESET_DEFAULT;
    } else if (cur.nodeNr == cur.nodeMax) {
        xmlNodePtr *temp;
        SAILR_ASSERT(cur.nodeMax > 0 && cur.nodeMax <= XML_NODESET_DEFAULT);
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    if (cur.nodeTab) free(cur.nodeTab);
    return 0;
}

int main(void) {
    xmlNodePtr node1, node2;

    klee_make_symbolic(&node1, sizeof(node1), "node1");
    klee_make_symbolic(&node2, sizeof(node2), "node2");

    xmlXPathCmpNodesExt(node1, node2);
    return 0;
}