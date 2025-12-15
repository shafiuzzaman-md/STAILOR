#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the target function */
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;
typedef struct _xmlDoc xmlDoc;
typedef xmlDoc *xmlDocPtr;

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
    void *ns;
    char *content;
    struct _xmlAttr *properties;
    void *nsDef;
    void *psvi;
    unsigned short line;
    unsigned short extra;
};

struct _xmlDoc {
    void *private;
    int type;
    char *name;
    struct _xmlNode *children;
    struct _xmlNode *last;
    struct _xmlNode *parent;
    struct _xmlNode *next;
    struct _xmlNode *prev;
    struct _xmlDoc *doc;
    int compression;
    int standalone;
    struct _xmlDtd *intSubset;
    struct _xmlDtd *extSubset;
    struct _xmlNs *oldNs;
    const char *version;
    const char *encoding;
    void *ids;
    void *refs;
    const char *URL;
    int charset;
    struct _xmlDict *dict;
    void *psvi;
    int parseFlags;
    int properties;
};

/* Global variables referenced in the target code */
int __xmlRegisterCallbacks = 0;
void (*xmlRegisterNodeDefaultValue)(xmlNodePtr node) = NULL;

/* Stub functions */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing */
}

void* xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "xmlMalloc_buffer");
    }
    return ptr;
}

/* Target function - extracted from tree.c around line 2443 */
xmlNodePtr xmlNewDocFragment(xmlDocPtr doc) {
    xmlNodePtr cur;
    
    /*
     * Allocate a new DocumentFragment node and fill the fields.
     */
    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == NULL) {
        xmlTreeErrMemory("building fragment");
        return(NULL);
    }
    
    /* TARGET LINE 2443 - vulnerable memset call */
    memset(cur, 0, sizeof(xmlNode));
    
    /* Vulnerability assertion: check that the allocated size is at least sizeof(xmlNode) */
    SAILR_ASSERT(__builtin_object_size(cur, 0) >= sizeof(xmlNode) || 
                 __builtin_object_size(cur, 1) >= sizeof(xmlNode));
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    cur->type = 11; /* XML_DOCUMENT_FRAG_NODE */
    cur->doc = doc;
    
    if ((__xmlRegisterCallbacks) && (xmlRegisterNodeDefaultValue))
        xmlRegisterNodeDefaultValue(cur);
    return(cur);
}

/* Entry point */
int main(void) {
    xmlDocPtr doc;
    xmlNodePtr result;
    
    /* Make doc symbolic to explore different paths */
    doc = (xmlDocPtr)malloc(sizeof(xmlDoc));
    klee_make_symbolic(doc, sizeof(xmlDoc), "doc");
    
    /* Assume doc is a valid pointer (not NULL) */
    klee_assume(doc != NULL);
    
    /* Call the target function */
    result = xmlNewDocFragment(doc);
    
    /* Clean up */
    if (result) {
        free(result);
    }
    free(doc);
    
    return 0;
}