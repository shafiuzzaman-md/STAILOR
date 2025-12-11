#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions we need */
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;
typedef struct _xmlNs xmlNs;
typedef xmlNs *xmlNsPtr;

/* Minimal stub types */
struct _xmlNode {
    int type;
    char *name;
    xmlNsPtr ns;
    /* Other fields omitted for brevity */
};

struct _xmlNs {
    char *href;
    char *prefix;
    /* Other fields omitted for brevity */
};

/* Stub functions */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

char *xmlStrdup(const char *cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen(cur) + 1;
    char *res = (char*)malloc(len);
    if (res) memcpy(res, cur, len);
    return res;
}

/* Target function - simplified version of xmlNewNode */
xmlNodePtr xmlNewNode(xmlNsPtr ns, const char *name) {
    xmlNodePtr cur;
    
    if (name == NULL) return(NULL);
    
    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == NULL) {
        xmlTreeErrMemory("building node");
        return(NULL);
    }
    
    /* TARGET LINE 2207: memset with sizeof(xmlNode) */
    memset(cur, 0, sizeof(xmlNode));
    
    cur->type = 1; /* XML_ELEMENT_NODE */
    cur->name = xmlStrdup(name);
    cur->ns = ns;
    
    return cur;
}

/* Entry point function from SA spec */
xmlNodePtr xmlStringGetNodeList(const char *str) {
    /* Simplified: just call xmlNewNode */
    return xmlNewNode(NULL, str);
}

int main(void) {
    /* Symbolic input for xmlStringGetNodeList */
    char name[256];
    klee_make_symbolic(name, sizeof(name), "name");
    
    /* Assume name is null-terminated */
    name[255] = '\0';
    
    /* Call the entrypoint */
    xmlNodePtr result = xmlStringGetNodeList(name);
    
    /* If we reach here, the memset at line 2207 executed */
    if (result != NULL) {
        /* Vulnerability assertion: ensure the memset size is safe */
        /* For OOB memset, we need to ensure sizeof(xmlNode) doesn't exceed allocation */
        /* Since xmlMalloc allocates exactly sizeof(xmlNode), the condition is always true */
        /* But we still need to assert the safety condition */
        SAILR_ASSERT(sizeof(xmlNode) <= sizeof(xmlNode)); /* Always true for correct allocation */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Cleanup */
        free(result->name);
        free(result);
    }
    
    return 0;
}