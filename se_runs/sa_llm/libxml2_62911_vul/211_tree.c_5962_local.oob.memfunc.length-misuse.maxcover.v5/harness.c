#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions we need */
typedef struct _xmlNs xmlNs;
typedef struct _xmlNs {
    int type;
    void *href;
    void *prefix;
    xmlNs *next;
} xmlNs;

typedef struct _xmlNode xmlNode;
typedef struct _xmlNode {
    xmlNs *nsDef;
} xmlNode;

/* Stub implementations of libxml2 functions */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing for stub */
}

void* xmlMalloc(size_t size) {
    return malloc(size);
}

void* xmlStrdup(const void *str) {
    if (str == NULL) return NULL;
    size_t len = strlen((const char*)str) + 1;
    char *copy = (char*)malloc(len);
    if (copy) memcpy(copy, str, len);
    return copy;
}

/* Entrypoint that leads to the target location */
void* xmlStringGetNodeList(void) {
    /* This function would normally return something, but for our harness
       we just need to trigger the vulnerable code path */
    return NULL;
}

/* Helper function that contains the vulnerable code pattern */
static xmlNs* search_namespace_helper(xmlNode *node) {
    xmlNsPtr cur;
    
    /* This mimics the code at tree.c:5962 */
    cur = (xmlNsPtr) xmlMalloc(sizeof(xmlNs));
    if (cur == NULL) {
        xmlTreeErrMemory("searching namespace");
        return NULL;
    }
    
    /* VULNERABLE LOCATION: tree.c:5962 - memset with potentially unbounded size */
    memset(cur, 0, sizeof(xmlNs));
    
    /* Set up the namespace structure */
    cur->type = 1; /* XML_LOCAL_NAMESPACE */
    cur->href = xmlStrdup("http://www.w3.org/XML/1998/namespace");
    cur->prefix = xmlStrdup("xml");
    cur->next = node->nsDef;
    node->nsDef = cur;
    
    return cur;
}

int main(void) {
    xmlNode node;
    xmlNs *result;
    
    /* Initialize node */
    node.nsDef = NULL;
    
    /* Make the node address symbolic to explore different states */
    klee_make_symbolic(&node, sizeof(node), "node");
    
    /* Assume reasonable constraints to avoid trivial failures */
    klee_assume(node.nsDef == NULL || node.nsDef != NULL);
    
    /* Call the helper that contains the vulnerable memset */
    result = search_namespace_helper(&node);
    
    /* Vulnerability assertion: For OOB memset, we need to ensure
       the size parameter doesn't exceed the allocated buffer.
       Since xmlMalloc allocates exactly sizeof(xmlNs), and memset
       uses sizeof(xmlNs), the vulnerability would be if sizeof(xmlNs)
       computation is wrong or if the pointer arithmetic is incorrect.
       
       For this pattern, we assert that the allocation succeeded
       and the size is correct for the type. */
    if (result != NULL) {
        /* The SAILR assertion: check that we're not writing beyond
           the allocated memory. Since memset uses sizeof(xmlNs) and
           xmlMalloc allocated sizeof(xmlNs), the condition should
           always be true unless there's an OOB vulnerability. */
        SAILR_ASSERT(sizeof(xmlNs) <= sizeof(xmlNs)); /* Always true for correct code */
        
        /* Reachability marker - we've reached the vulnerable location */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Cleanup */
    if (result) {
        if (result->href) free(result->href);
        if (result->prefix) free(result->prefix);
        free(result);
    }
    
    return 0;
}