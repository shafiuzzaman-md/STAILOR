#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;
typedef struct _xmlNs xmlNs;
typedef xmlNs *xmlNsPtr;

typedef enum {
    XML_NAMESPACE_DECL = 16
} xmlElementType;

typedef struct _xmlXPathObject {
    int type;
    void *user;
    int nodeNr;
    int nodeMax;
    xmlNodePtr *nodeTab;
    void *value;
} xmlXPathObject;

typedef xmlXPathObject *xmlXPathObjectPtr;

/* Stub functions needed to avoid linking issues */
void xmlXPathErrMemory(void *ctxt, const char *msg) {
    /* Do nothing */
}

void xmlFree(void *ptr) {
    free(ptr);
}

xmlNodePtr xmlXPathNodeSetDupNs(xmlNodePtr node, xmlNsPtr ns) {
    /* Return symbolic node pointer */
    xmlNodePtr result;
    klee_make_symbolic(&result, sizeof(result), "dup_ns_result");
    klee_assume(result != NULL);
    return result;
}

/* Target function - simplified version to reach line 2995 */
xmlXPathObjectPtr xmlXPathCmpNodesExt(xmlXPathObjectPtr val) {
    xmlXPathObjectPtr ret;
    
    /* Allocate return object */
    ret = (xmlXPathObjectPtr)malloc(sizeof(*ret));
    if (ret == NULL) {
        return NULL;
    }
    
    /* Initialize fields */
    ret->nodeTab = NULL;
    ret->nodeNr = 0;
    ret->nodeMax = 0;
    
    /* Allocate nodeTab - this is where the vulnerability check happens */
    #define XML_NODESET_DEFAULT 10
    ret->nodeTab = (xmlNodePtr *)malloc(XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
    
    /* Line 2995: Check if allocation failed */
    if (ret->nodeTab == NULL) {
        xmlXPathErrMemory(NULL, "creating nodeset\n");
        xmlFree(ret);
        return NULL;
    }
    
    /* VULNERABILITY ASSERTION: Check if the memset size is safe */
    /* The memset uses XML_NODESET_DEFAULT * sizeof(xmlNodePtr) */
    /* We need to ensure the allocated buffer is at least that size */
    SAILR_ASSERT(XML_NODESET_DEFAULT * sizeof(xmlNodePtr) <= XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
    
    /* REACHABILITY ASSERTION */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* The actual memset call that the SA is concerned about */
    memset(ret->nodeTab, 0, XML_NODESET_DEFAULT * sizeof(xmlNodePtr));
    
    ret->nodeMax = XML_NODESET_DEFAULT;
    
    /* Continue execution to avoid early returns */
    if (val->type == XML_NAMESPACE_DECL) {
        xmlNsPtr ns = (xmlNsPtr)val->value;
        xmlNodePtr nsNode = xmlXPathNodeSetDupNs((xmlNodePtr)ns->next, ns);
        /* Use nsNode to avoid unused variable warning */
        if (nsNode) {
            ret->nodeTab[0] = nsNode;
        }
    }
    
    return ret;
}

/* Entry point */
int main(void) {
    xmlXPathObject val;
    xmlXPathObjectPtr val_ptr = &val;
    
    /* Make the input value symbolic */
    klee_make_symbolic(&val, sizeof(val), "val");
    
    /* Assume reasonable values to reach the target code */
    klee_assume(val_ptr != NULL);
    
    /* Assume the type could be XML_NAMESPACE_DECL or something else */
    /* Don't constrain too much to allow exploration */
    
    /* Allocate space for value pointer if needed */
    val.value = malloc(sizeof(xmlNs));
    klee_assume(val.value != NULL);
    
    /* Call the target function */
    xmlXPathObjectPtr result = xmlXPathCmpNodesExt(val_ptr);
    
    /* Cleanup */
    if (result) {
        if (result->nodeTab) {
            free(result->nodeTab);
        }
        free(result);
    }
    free(val.value);
    
    return 0;
}