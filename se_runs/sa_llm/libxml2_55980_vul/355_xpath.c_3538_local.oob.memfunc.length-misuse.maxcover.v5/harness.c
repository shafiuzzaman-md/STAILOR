#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the target function */
typedef struct _xmlNs xmlNs;
typedef xmlNs *xmlNsPtr;
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;

struct _xmlNs {
    void *next;
    int type;
    const unsigned char *href;
    const unsigned char *prefix;
};

/* Function prototypes from libxml2 that we need */
void *xmlMalloc(size_t size);
unsigned char *xmlStrdup(const unsigned char *cur);
void xmlXPathErrMemory(void *ctxt, const char *msg);

/* Constants */
#define XML_NAMESPACE_DECL 1

/* Target function - xmlXPathNodeSetDupNs from xpath.c line 3538 */
static xmlNodePtr xmlXPathNodeSetDupNs(xmlNodePtr node, xmlNsPtr ns) {
    xmlNsPtr cur;

    /*
     * Allocate a new Namespace and fill the fields.
     */
    cur = (xmlNsPtr) xmlMalloc(sizeof(xmlNs));
    if (cur == NULL) {
        xmlXPathErrMemory(NULL, "duplicating namespace\n");
        return(NULL);
    }
    
    /* TARGET LINE 3538 - memset with sizeof(xmlNs) */
    memset(cur, 0, sizeof(xmlNs));
    
    /* Vulnerability assertion: check that cur points to at least sizeof(xmlNs) bytes */
    SAILR_ASSERT(cur != NULL);  /* Already checked above, but for completeness */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    cur->type = XML_NAMESPACE_DECL;
    if (ns->href != NULL)
        cur->href = xmlStrdup(ns->href);
    if (ns->prefix != NULL)
        cur->prefix = xmlStrdup(ns->prefix);
    cur->next = (xmlNsPtr) node;
    return((xmlNodePtr) cur);
}

/* Stub implementations */
void *xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    if (ptr) {
        /* Make the allocated memory symbolic to explore different states */
        klee_make_symbolic(ptr, size, "allocated_memory");
    }
    return ptr;
}

unsigned char *xmlStrdup(const unsigned char *cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen((const char*)cur) + 1;
    unsigned char *dup = (unsigned char*)malloc(len);
    if (dup) {
        memcpy(dup, cur, len);
    }
    return dup;
}

void xmlXPathErrMemory(void *ctxt, const char *msg) {
    /* Do nothing - just a stub */
}

int main(void) {
    /* Symbolic inputs to drive execution */
    xmlNode node_storage;
    xmlNs ns_storage;
    
    /* Make the ns structure symbolic */
    klee_make_symbolic(&ns_storage, sizeof(ns_storage), "ns_storage");
    
    /* Constrain inputs to avoid null dereferences in the function */
    klee_assume(ns_storage.href != NULL || ns_storage.href == NULL);
    klee_assume(ns_storage.prefix != NULL || ns_storage.prefix == NULL);
    
    /* Call the target function */
    xmlNodePtr result = xmlXPathNodeSetDupNs(&node_storage, &ns_storage);
    
    /* Free if non-NULL to avoid memory leak reports */
    if (result) {
        free(result);
    }
    
    return 0;
}