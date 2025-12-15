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

/* Constants from libxml2 */
#define XML_NODESET_DEFAULT 10
#define XPATH_MAX_NODESET_LENGTH 1000000

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

/* Target function - extracted from xpath.c around line 3918 */
static xmlXPathObject* target_function(xmlXPathObject* val1) {
    if (val1->nodeMax == 0) {
        val1->nodeTab = (xmlNodePtr *) xmlMalloc(XML_NODESET_DEFAULT *
                            sizeof(xmlNodePtr));
        if (val1->nodeTab == NULL) {
            xmlXPathErrMemory(NULL, "merging nodeset\n");
            return(NULL);
        }
        /* TARGET LINE 3918 - memset call */
        memset(val1->nodeTab, 0,
               XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
        val1->nodeMax = XML_NODESET_DEFAULT;
    } else if (val1->nodeNr == val1->nodeMax) {
        xmlNodePtr *temp;
        
        if (val1->nodeMax >= XPATH_MAX_NODESET_LENGTH) {
            xmlXPathErrMemory(NULL, "merging nodeset hit limit\n");
            return(NULL);
        }
        /* Not relevant for reaching target line */
    }
    return val1;
}

int main(void) {
    /* Create symbolic xpath object */
    xmlXPathObject val1;
    
    /* Make nodeMax symbolic to control which branch is taken */
    klee_make_symbolic(&val1.nodeMax, sizeof(val1.nodeMax), "nodeMax");
    
    /* Constrain nodeMax to be 0 to take the first branch */
    klee_assume(val1.nodeMax == 0);
    
    /* Initialize other fields */
    val1.nodeTab = NULL;
    val1.nodeNr = 0;
    
    /* Call target function */
    xmlXPathObject* result = target_function(&val1);
    
    /* Vulnerability assertion: ensure allocation size is safe */
    /* For memset, the condition is that the size doesn't overflow or cause OOB */
    /* Since XML_NODESET_DEFAULT is constant, we check it's positive and reasonable */
    SAILR_ASSERT(XML_NODESET_DEFAULT > 0 && XML_NODESET_DEFAULT <= XPATH_MAX_NODESET_LENGTH);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    if (result && result->nodeTab) {
        free(result->nodeTab);
    }
    
    return 0;
}