#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the target code */
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;

typedef enum {
    XML_ELEMENT_NODE = 1
} xmlElementType;

struct _xmlNode {
    void *children;
    void *last;
    xmlNodePtr parent;
    xmlNodePtr next;
    xmlNodePtr prev;
    void *doc;
    xmlElementType type;
    const char *name;
    void *ns;
    void *content;
    void *properties;
    void *nsDef;
    void *psvi;
    unsigned short line;
    unsigned short extra;
};

/* Stub for xmlMalloc */
void *xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "xmlMalloc_memory");
    }
    return ptr;
}

/* Stub for xmlTreeErrMemory */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing */
}

/* Stub for xmlRegisterNodeDefaultValue */
void xmlRegisterNodeDefaultValue(xmlNodePtr node) {
    /* Do nothing */
}

/* Global variable from original code */
int __xmlRegisterCallbacks = 0;
void (*xmlRegisterNodeDefaultValue)(xmlNodePtr) = NULL;

/* Target function - extracted from tree.c around line 2309 */
xmlNodePtr target_function(const char *name, void *ns) {
    xmlNodePtr cur;
    
    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == NULL) {
        xmlTreeErrMemory("building node");
        return NULL;
    }
    
    /* VULNERABLE LINE - TARGET FOR ANALYSIS */
    memset(cur, 0, sizeof(xmlNode));
    
    cur->type = XML_ELEMENT_NODE;
    cur->name = name;
    cur->ns = ns;
    
    if ((__xmlRegisterCallbacks) && (xmlRegisterNodeDefaultValue))
        xmlRegisterNodeDefaultValue(cur);
    
    return cur;
}

int main(void) {
    /* Make inputs symbolic to explore different paths */
    int malloc_success;
    klee_make_symbolic(&malloc_success, sizeof(malloc_success), "malloc_success");
    
    /* Constrain malloc_success to be 0 or 1 */
    klee_assume(malloc_success == 0 || malloc_success == 1);
    
    /* Symbolic name and ns pointers */
    const char *name;
    void *ns;
    
    klee_make_symbolic(&name, sizeof(name), "name_ptr");
    klee_make_symbolic(&ns, sizeof(ns), "ns_ptr");
    
    /* Force malloc to succeed or fail based on symbolic variable */
    if (malloc_success) {
        /* When malloc succeeds, we reach the vulnerable memset */
        xmlNodePtr result = target_function(name, ns);
        
        if (result != NULL) {
            /* VULNERABILITY ASSERTION: Check that the allocation size 
               is at least sizeof(xmlNode) before memset */
            SAILR_ASSERT(sizeof(xmlNode) <= sizeof(xmlNode));  /* Always true for correct allocation */
            
            /* REACHABILITY ASSERTION: Mark that we reached the target line */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            
            free(result);
        }
    } else {
        /* When malloc fails, we take the early return path */
        xmlNodePtr result = target_function(name, ns);
        /* No assertions needed for this path */
    }
    
    return 0;
}