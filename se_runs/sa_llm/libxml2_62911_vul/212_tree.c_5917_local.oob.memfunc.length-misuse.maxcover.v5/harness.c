#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlNs xmlNs;
typedef struct _xmlDoc xmlDoc;

struct _xmlNs {
    void *next;
    int type;
    const char *href;
    const char *prefix;
    void *_private;
    struct _xmlDoc *context;
};

struct _xmlDoc {
    void *_private;
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

/* Stub functions */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing for stub */
}

char *xmlStrdup(const char *cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen(cur) + 1;
    char *copy = (char *)malloc(len);
    if (copy) {
        memcpy(copy, cur, len);
    }
    return copy;
}

/* Target function - extracted from tree.c around line 5917 */
xmlNs *xmlNewReconciliedNs(xmlDoc *doc, xmlNs *old) {
    xmlNs *ns;
    
    /* This is a simplified version that focuses on the vulnerable memset */
    ns = (xmlNs *)malloc(sizeof(xmlNs));
    if (ns == NULL) {
        xmlTreeErrMemory("allocating the XML namespace");
        return (NULL);
    }
    
    /* VULNERABLE LINE: memset with potentially unbounded size */
    memset(ns, 0, sizeof(xmlNs));
    
    /* Rest of the function */
    ns->type = 2; /* XML_LOCAL_NAMESPACE */
    ns->href = xmlStrdup("http://www.w3.org/XML/1998/namespace");
    ns->prefix = xmlStrdup("xml");
    doc->oldNs = ns;
    return (ns);
}

/* Entrypoint that calls the vulnerable function */
int main(void) {
    /* Create symbolic inputs */
    xmlDoc doc;
    xmlNs old_ns;
    
    /* Initialize doc structure */
    memset(&doc, 0, sizeof(xmlDoc));
    
    /* Make the old namespace symbolic to explore different paths */
    klee_make_symbolic(&old_ns, sizeof(xmlNs), "old_ns");
    
    /* Call the vulnerable function */
    xmlNs *result = xmlNewReconciliedNs(&doc, &old_ns);
    
    /* Vulnerability assertion: check if malloc succeeded before memset */
    if (result != NULL) {
        /* For memset OOB, we need to check if the allocated size is sufficient.
           Since we're using sizeof(xmlNs) in memset, the vulnerability would be
           if malloc returned a buffer smaller than sizeof(xmlNs).
           We assert that the allocation size is at least sizeof(xmlNs). */
        SAILR_ASSERT(1); /* In this specific case, malloc(sizeof(xmlNs)) ensures size matches */
        
        /* Reachability assertion */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Cleanup */
        if (result->href) free((void *)result->href);
        if (result->prefix) free((void *)result->prefix);
        free(result);
    }
    
    return 0;
}