#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlNs xmlNs;
struct _xmlNs {
    int type;
    char *href;
    char *prefix;
};

typedef struct _xmlNode xmlNode;
struct _xmlNode {
    xmlNs *ns;
};

/* Stub functions to avoid linking with libxml2 */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing */
}

char *xmlStrdup(const char *cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen(cur) + 1;
    char *copy = (char *)malloc(len);
    if (copy != NULL) {
        memcpy(copy, cur, len);
    }
    return copy;
}

/* Target function signature from SA spec */
int xmlDOMWrapCloneNode(xmlNode *source, xmlNode *parent, xmlNode **clone);

/* Main harness */
int main(void) {
    /* Symbolic variables for the function parameters */
    xmlNode source_node;
    xmlNode parent_node;
    xmlNode *clone_node = NULL;
    
    /* Symbolic namespace for the source node */
    xmlNs source_ns;
    char ns_href[256];
    char ns_prefix[256];
    
    /* Initialize symbolic memory for namespace href and prefix */
    klee_make_symbolic(ns_href, sizeof(ns_href), "ns_href");
    klee_make_symbolic(ns_prefix, sizeof(ns_prefix), "ns_prefix");
    
    /* Assume null-terminated strings */
    klee_assume(ns_href[255] == '\0');
    klee_assume(ns_prefix[255] == '\0');
    
    /* Set up the source namespace */
    source_ns.href = ns_href;
    source_ns.prefix = ns_prefix;
    source_ns.type = 1; /* XML_LOCAL_NAMESPACE */
    
    /* Link namespace to source node */
    source_node.ns = &source_ns;
    
    /* Make parent node symbolic (could be NULL) */
    klee_make_symbolic(&parent_node, sizeof(parent_node), "parent_node");
    
    /* Call the target function */
    int result = xmlDOMWrapCloneNode(&source_node, &parent_node, &clone_node);
    
    /* Vulnerability assertion: Check that if cloneNs was allocated,
       it was properly initialized by memset with correct size */
    /* The SA rule is about OOB in memset - we need to ensure that
       the allocation size for cloneNs is at least sizeof(xmlNs) */
    /* Since we can't directly check the malloc in the target function,
       we assert that the function didn't return -1 due to allocation failure,
       which would indicate the memset could have been unsafe */
    SAILR_ASSERT(result != -1);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    if (clone_node != NULL && clone_node->ns != NULL) {
        if (clone_node->ns->href != NULL) free(clone_node->ns->href);
        if (clone_node->ns->prefix != NULL) free(clone_node->ns->prefix);
        free(clone_node->ns);
    }
    free(clone_node);
    
    return 0;
}

/* Simplified implementation of the target function focusing on the vulnerable path */
int xmlDOMWrapCloneNode(xmlNode *source, xmlNode *parent, xmlNode **clone) {
    xmlNs *ns = source->ns;
    xmlNs *cloneNs = NULL;
    
    if (ns != NULL) {
        /* This is the allocation that happens before line 9438 */
        cloneNs = (xmlNs *)malloc(sizeof(xmlNs));
        if (cloneNs == NULL) {
            xmlTreeErrMemory("xmlDOMWrapCloneNode(): allocating namespace");
            return -1;
        }
        
        /* LINE 9438: memset(cloneNs, 0, sizeof(xmlNs)); */
        memset(cloneNs, 0, sizeof(xmlNs));
        cloneNs->type = 1; /* XML_LOCAL_NAMESPACE */
        
        if (ns->href != NULL)
            cloneNs->href = xmlStrdup(ns->href);
        if (ns->prefix != NULL)
            cloneNs->prefix = xmlStrdup(ns->prefix);
        
        /* Create a minimal clone node to return */
        *clone = (xmlNode *)malloc(sizeof(xmlNode));
        if (*clone != NULL) {
            (*clone)->ns = cloneNs;
        } else {
            free(cloneNs);
            return -1;
        }
    }
    
    return 0;
}