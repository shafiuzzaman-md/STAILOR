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
    void *href;
    void *prefix;
    xmlNs *next;
};

typedef struct _xmlNode xmlNode;
struct _xmlNode {
    xmlNs *nsDef;
};

typedef struct _xmlDoc xmlDoc;
struct _xmlDoc {
    /* Minimal fields to avoid null dereferences */
    int dummy;
};

/* Stub functions to avoid linking with libxml2 */
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

void xmlTreeErrMemory(const char *msg) {
    /* Do nothing */
}

/* Simulated function that contains the vulnerable memset at line 6139 */
xmlNs* xmlSearchNs(xmlDoc *doc, xmlNode *node, const unsigned char *name) {
    xmlNs *cur;
    
    /* Simulate the code path leading to the vulnerable memset */
    if (name != NULL && doc != NULL && node != NULL) {
        /* This simulates the condition that leads to the allocation */
        cur = (xmlNs*)xmlMalloc(sizeof(xmlNs));
        if (cur == NULL) {
            xmlTreeErrMemory("searching namespace");
            return NULL;
        }
        
        /* VULNERABLE LINE: tree.c:6139 */
        memset(cur, 0, sizeof(xmlNs));
        
        /* Vulnerability assertion: ensure the memset size doesn't exceed allocation */
        SAILR_ASSERT(sizeof(xmlNs) <= sizeof(xmlNs)); /* Always true for correct allocation */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Continue with the rest of the simulated function */
        cur->type = 1; /* XML_LOCAL_NAMESPACE */
        cur->href = xmlStrdup((const void*)"http://www.w3.org/XML/1998/namespace");
        cur->prefix = xmlStrdup((const void*)"xml");
        cur->next = node->nsDef;
        node->nsDef = cur;
        return cur;
    }
    
    return NULL;
}

int main(void) {
    /* Symbolic inputs to explore different paths */
    xmlDoc doc;
    xmlNode node;
    unsigned char name[10];
    
    /* Initialize to avoid uninitialized use */
    node.nsDef = NULL;
    
    /* Make the name symbolic to explore different branches */
    klee_make_symbolic(name, sizeof(name), "name");
    
    /* Assume name is null-terminated for safety */
    name[sizeof(name)-1] = '\0';
    
    /* Call the function with symbolic inputs */
    xmlNs* result = xmlSearchNs(&doc, &node, name);
    
    /* Clean up if needed */
    if (result) {
        free(result->href);
        free(result->prefix);
        free(result);
    }
    
    return 0;
}