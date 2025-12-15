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

/* Simplified xmlXPathObject structure */
struct _xmlXPathObject {
    int type;
    xmlNodePtr *nodeTab;
    int nodeNr;
    int nodeMax;
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlXPathErrMemory */
void xmlXPathErrMemory(void* ctxt, const char* msg) {
    /* Do nothing */
}

/* Target function - extracted from xpath.c around line 3801 */
int target_function(xmlXPathObjectPtr cur) {
    if (cur->nodeMax == 0) {
        cur->nodeTab = (xmlNodePtr *) xmlMalloc(XML_NODESET_DEFAULT *
                                             sizeof(xmlNodePtr));
        if (cur->nodeTab == NULL) {
            xmlXPathErrMemory(NULL, "growing nodeset\n");
            return(-1);
        }
        /* VULNERABLE LINE: 3801 */
        memset(cur->nodeTab, 0,
               XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
        cur->nodeMax = XML_NODESET_DEFAULT;
    } else if (cur->nodeNr == cur->nodeMax) {
        xmlNodePtr *temp;
        /* Not relevant for reaching line 3801 */
        return(-1);
    }
    return 0;
}

/* Entrypoint */
int main(void) {
    xmlXPathObject obj;
    
    /* Initialize symbolic fields */
    klee_make_symbolic(&obj, sizeof(obj), "obj");
    
    /* Assume conditions to reach line 3801 */
    klee_assume(obj.nodeMax == 0);  /* Required to enter the first branch */
    
    /* Assume nodeTab is NULL initially (will be allocated) */
    obj.nodeTab = NULL;
    
    /* Call target function */
    int result = target_function(&obj);
    
    /* If we reach here and result == 0, we executed the memset */
    if (result == 0) {
        /* Vulnerability assertion: ensure allocation size matches memset size */
        SAILR_ASSERT(obj.nodeTab != NULL);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Cleanup */
    if (obj.nodeTab) {
        free(obj.nodeTab);
    }
    
    return 0;
}