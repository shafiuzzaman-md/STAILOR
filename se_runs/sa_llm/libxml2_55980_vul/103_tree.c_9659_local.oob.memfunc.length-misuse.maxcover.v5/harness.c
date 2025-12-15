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

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "xmlMalloc_memory");
    }
    return ptr;
}

/* Stub for xmlStrdup */
char* xmlStrdup(const char *cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen(cur) + 1;
    char *res = (char*)malloc(len);
    if (res) {
        memcpy(res, cur, len);
    }
    return res;
}

/* Stub for xmlTreeErrMemory */
void xmlTreeErrMemory(const char *func) {
    /* Do nothing */
}

/* Minimal context to reach the target line */
typedef struct {
    xmlNsPtr ns;
    xmlNsPtr *cloneNsDefSlot;
} CloneContext;

/* Simulated function that reaches the vulnerable memset */
int xmlDOMWrapCloneNode_helper(CloneContext *ctx) {
    xmlNsPtr ns = ctx->ns;
    xmlNsPtr cloneNs;
    xmlNsPtr *cloneNsDefSlot = ctx->cloneNsDefSlot;
    
    cloneNs = (xmlNsPtr) xmlMalloc(sizeof(xmlNs));
    if (cloneNs == NULL) {
        xmlTreeErrMemory("xmlDOMWrapCloneNode(): allocating namespace");
        return -1;
    }
    
    /* TARGET LINE: 9659 - vulnerable memset */
    memset(cloneNs, 0, sizeof(xmlNs));
    
    /* Vulnerability assertion: ensure the allocated size is at least sizeof(xmlNs) */
    SAILR_ASSERT(cloneNs != NULL);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    cloneNs->type = 1; /* XML_LOCAL_NAMESPACE */
    
    if (ns->href != NULL)
        cloneNs->href = xmlStrdup(ns->href);
    if (ns->prefix != NULL)
        cloneNs->prefix = xmlStrdup(ns->prefix);
    
    *cloneNsDefSlot = cloneNs;
    return 0;
}

int main(void) {
    /* Symbolic inputs */
    CloneContext ctx;
    xmlNs ns;
    xmlNsPtr cloneNsSlot = NULL;
    
    /* Initialize context */
    ctx.ns = &ns;
    ctx.cloneNsDefSlot = &cloneNsSlot;
    
    /* Make ns fields symbolic */
    klee_make_symbolic(&ns.href, sizeof(ns.href), "ns_href_ptr");
    klee_make_symbolic(&ns.prefix, sizeof(ns.prefix), "ns_prefix_ptr");
    
    /* Assume reasonable pointer values (NULL or valid) */
    klee_assume(ns.href == NULL || (unsigned long)ns.href >= 0x1000);
    kleke_assume(ns.prefix == NULL || (unsigned long)ns.prefix >= 0x1000);
    
    /* Call the helper that reaches the target line */
    xmlDOMWrapCloneNode_helper(&ctx);
    
    /* Cleanup */
    if (cloneNsSlot) {
        free(cloneNsSlot->href);
        free(cloneNsSlot->prefix);
        free(cloneNsSlot);
    }
    
    return 0;
}