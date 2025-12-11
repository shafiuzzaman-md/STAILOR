#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlNs xmlNs;
typedef xmlNs *xmlNsPtr;

struct _xmlNs {
    int type;
    char *href;
    char *prefix;
};

/* Stub functions to avoid linking with libxml2 */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

char *xmlStrdup(const char *str) {
    if (str == NULL) return NULL;
    size_t len = strlen(str) + 1;
    char *copy = (char *)malloc(len);
    if (copy) memcpy(copy, str, len);
    return copy;
}

/* Target function prototype - based on context around line 754 */
xmlNsPtr xmlNewNs(void *node, const char *href, const char *prefix) {
    xmlNsPtr cur;
    
    /* Line 754 is: memset(cur, 0, sizeof(xmlNs)); */
    cur = (xmlNsPtr) xmlMalloc(sizeof(xmlNs));
    if (cur == NULL) {
        xmlTreeErrMemory("building namespace");
        return NULL;
    }
    
    /* VULNERABILITY ASSERTION: Check that the allocation size is safe */
    /* For memset safety, we need to ensure we're not writing beyond allocated bounds */
    SAILR_ASSERT(sizeof(xmlNs) <= __builtin_object_size(cur, 0));
    
    /* REACHABILITY ASSERTION */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(cur, 0, sizeof(xmlNs));
    cur->type = 1; /* XML_LOCAL_NAMESPACE */
    
    if (href != NULL)
        cur->href = xmlStrdup(href);
    if (prefix != NULL)
        cur->prefix = xmlStrdup(prefix);
    
    return cur;
}

int main(void) {
    /* Make href and prefix symbolic to explore different paths */
    char href[256];
    char prefix[256];
    
    klee_make_symbolic(href, sizeof(href), "href");
    klee_make_symbolic(prefix, sizeof(prefix), "prefix");
    
    /* Ensure null-terminated strings */
    href[255] = '\0';
    prefix[255] = '\0';
    
    /* Call the target function */
    xmlNsPtr ns = xmlNewNs(NULL, href, prefix);
    
    /* Clean up if allocation succeeded */
    if (ns != NULL) {
        if (ns->href) free(ns->href);
        if (ns->prefix) free(ns->prefix);
        free(ns);
    }
    
    return 0;
}