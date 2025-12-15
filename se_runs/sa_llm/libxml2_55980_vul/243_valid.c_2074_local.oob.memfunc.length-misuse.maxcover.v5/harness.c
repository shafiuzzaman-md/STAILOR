#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed from libxml2 to compile */
typedef struct _xmlAttribute xmlAttribute;
struct _xmlAttribute {
    int type;
    int atype;
    void *doc;
    void *elem;
    void *prefix;
    void *name;
    void *children;
    void *last;
    void *parent;
    void *next;
    void *prev;
    void *ns;
    void *defaultValue;
    void *tree;
};

typedef struct _xmlEnumeration xmlEnumeration;
struct _xmlEnumeration {
    void *next;
    void *name;
};

typedef struct _xmlValidCtxt xmlValidCtxt;
struct _xmlValidCtxt {
    void *userData;
    void *error;
    void *warning;
    int flags;
};

/* Stub functions to avoid linking */
void xmlVErrMemory(xmlValidCtxt* ctxt, const char* msg) { }
void xmlFreeEnumeration(xmlEnumeration* tree) { }

/* Simulate xmlMalloc */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "xmlMalloc_memory");
    }
    return ptr;
}

/* Simulate xmlFree */
void xmlFree(void* ptr) {
    free(ptr);
}

/* Target function signature (from valid.c around line 2074) */
xmlAttribute* xmlNewAttributeDecl(xmlValidCtxt* ctxt, xmlEnumeration* tree, int type);

/* Harness entrypoint */
int main(void) {
    /* Symbolic inputs to drive execution */
    xmlValidCtxt ctxt;
    xmlEnumeration* tree;
    int type;

    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&tree, sizeof(tree), "tree");
    klee_make_symbolic(&type, sizeof(type), "type");

    /* Assume tree is either NULL or a valid pointer */
    if (tree != NULL) {
        klee_assume((unsigned long)tree >= 0x1000); /* crude valid address assumption */
    }

    /* Call the target function */
    xmlAttribute* ret = xmlNewAttributeDecl(&ctxt, tree, type);

    /* If we reach the memset at line 2074, ret is non-NULL */
    if (ret != NULL) {
        /* Vulnerability assertion: ensure the size argument to memset does not exceed allocated bounds */
        SAILR_ASSERT(sizeof(xmlAttribute) <= malloc_usable_size(ret));
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    /* Cleanup */
    if (ret) {
        xmlFree(ret);
    }
    if (tree) {
        xmlFreeEnumeration(tree);
    }

    return 0;
}

/* Minimal implementation of xmlNewAttributeDecl to reach line 2074 */
xmlAttribute* xmlNewAttributeDecl(xmlValidCtxt* ctxt, xmlEnumeration* tree, int type) {
    xmlAttribute* ret = (xmlAttribute*) xmlMalloc(sizeof(xmlAttribute));
    if (ret == NULL) {
        xmlVErrMemory(ctxt, "malloc failed");
        xmlFreeEnumeration(tree);
        return NULL;
    }
    /* TARGET LINE 2074 */
    memset(ret, 0, sizeof(xmlAttribute));
    ret->type = 1; /* XML_ATTRIBUTE_DECL */
    ret->atype = type;
    /* Minimal fill to avoid null derefs later */
    ret->doc = NULL;
    ret->elem = NULL;
    ret->prefix = NULL;
    ret->name = NULL;
    ret->children = NULL;
    ret->last = NULL;
    ret->parent = NULL;
    ret->next = NULL;
    ret->prev = NULL;
    ret->ns = NULL;
    ret->defaultValue = NULL;
    ret->tree = tree;
    return ret;
}