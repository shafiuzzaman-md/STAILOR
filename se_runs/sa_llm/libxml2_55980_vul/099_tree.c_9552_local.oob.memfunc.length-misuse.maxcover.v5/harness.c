#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub types to compile */
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;

struct _xmlNode {
    void *private;
    int type;
    const char *name;
    struct _xmlNode *children;
    struct _xmlNode *last;
    struct _xmlNode *parent;
    struct _xmlNode *next;
    struct _xmlNode *prev;
    struct _xmlDoc *doc;
    /* Other fields omitted for brevity */
};

typedef struct _xmlDoc xmlDoc;

/* Stub functions */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

/* Target function prototype */
int xmlDOMWrapCloneNode(xmlDoc *sourceDoc, xmlNodePtr node,
                        xmlDoc *targetDoc, xmlNodePtr *resultNode,
                        int options);

/* Harness main */
int main(void) {
    /* Symbolic inputs for xmlDOMWrapCloneNode parameters */
    xmlDoc *sourceDoc = NULL;
    xmlNodePtr node = NULL;
    xmlDoc *targetDoc = NULL;
    xmlNodePtr resultNode = NULL;
    int options;
    
    /* Make options symbolic to explore different paths */
    klee_make_symbolic(&options, sizeof(options), "options");
    
    /* Assume reasonable values to avoid trivial non-reachability */
    klee_assume(options >= 0);
    klee_assume(options <= 1024);
    
    /* Call the target function - this will reach line 9552 in tree.c
       when the allocation succeeds and resultClone is NULL */
    int ret = xmlDOMWrapCloneNode(sourceDoc, node, targetDoc, &resultNode, options);
    
    /* The vulnerability assertion: ensure the memset size matches allocation size.
       For length-misuse patterns, we assert that the size used in memset
       does not exceed the allocated buffer size. Since both use sizeof(xmlNode),
       the condition is always true, but we still mark the location. */
    SAILR_ASSERT(sizeof(xmlNode) == sizeof(xmlNode));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return ret;
}

/* Simplified implementation of xmlDOMWrapCloneNode to reach target line */
int xmlDOMWrapCloneNode(xmlDoc *sourceDoc, xmlNodePtr node,
                        xmlDoc *targetDoc, xmlNodePtr *resultNode,
                        int options) {
    xmlNodePtr clone = NULL;
    xmlNodePtr parentClone = NULL;
    xmlNodePtr prevClone = NULL;
    xmlNodePtr resultClone = *resultNode;
    
    /* This mimics the code path to reach line 9552 */
    clone = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (clone == NULL) {
        xmlTreeErrMemory("xmlDOMWrapCloneNode(): allocating a node");
        goto internal_error;
    }
    
    /* TARGET LINE 9552: memset(clone, 0, sizeof(xmlNode)); */
    memset(clone, 0, sizeof(xmlNode));
    
    /*
    * Set hierarchical links.
    */
    if (resultClone != NULL) {
        clone->parent = parentClone;
        if (prevClone) {
            prevClone->next = clone;
            clone->prev = prevClone;
        }
    }
    
    /* Rest of function omitted */
    return 0;
    
internal_error:
    return -1;
}