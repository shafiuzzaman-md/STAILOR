#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed to reach the target line */
typedef struct _xmlAttr xmlAttr;
typedef struct _xmlNode xmlNode;
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlNs xmlNs;

struct _xmlAttr {
    void *next;
    int type;
    xmlNode *parent;
    xmlDoc *doc;
    xmlNs *ns;
    const char *name;
};

struct _xmlNode {
    int dummy;
};

struct _xmlDoc {
    int dummy;
};

struct _xmlNs {
    int dummy;
};

typedef struct {
    xmlAttr *freeAttrs;
    int freeAttrsNr;
    xmlNode *node;
    xmlDoc *myDoc;
    int dictNames;
} parserCtxt;

/* Function prototype matching the target code */
xmlAttr *xmlSAX2GetAttribute(parserCtxt *ctxt, const char *localname, xmlNs *namespace);

/* Stub implementation that reaches the target line */
xmlAttr *xmlSAX2GetAttribute(parserCtxt *ctxt, const char *localname, xmlNs *namespace) {
    xmlAttr *ret;
    
    if (ctxt->freeAttrs != NULL) {
        ret = ctxt->freeAttrs;
        ctxt->freeAttrs = ret->next;
        ctxt->freeAttrsNr--;
        
        /* TARGET LINE 2000: memset(ret, 0, sizeof(xmlAttr)); */
        /* Vulnerability assertion: ensure we don't write beyond allocated memory */
        SAILR_ASSERT(ctxt->freeAttrsNr >= 0);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        memset(ret, 0, sizeof(xmlAttr));
        ret->type = 1; /* XML_ATTRIBUTE_NODE */
        ret->parent = ctxt->node;
        ret->doc = ctxt->myDoc;
        ret->ns = namespace;
        
        if (ctxt->dictNames)
            ret->name = localname;
            
        return ret;
    }
    
    return NULL;
}

int main(void) {
    parserCtxt ctxt;
    xmlAttr attr;
    xmlNode node;
    xmlDoc doc;
    xmlNs ns;
    char localname_buf[32];
    
    /* Make parser context symbolic */
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    
    /* Ensure freeAttrs points to valid memory if non-NULL */
    if (ctxt.freeAttrs != NULL) {
        /* Assume freeAttrs points to the attr variable */
        ctxt.freeAttrs = &attr;
        /* Ensure next pointer is either NULL or points to valid memory */
        klee_make_symbolic(&attr.next, sizeof(attr.next), "attr_next");
    }
    
    /* Constrain freeAttrsNr to be positive if freeAttrs is non-NULL */
    if (ctxt.freeAttrs != NULL) {
        klee_assume(ctxt.freeAttrsNr > 0);
    }
    
    /* Ensure other required pointers are non-NULL */
    ctxt.node = &node;
    ctxt.myDoc = &doc;
    
    /* Make dictNames symbolic */
    klee_make_symbolic(&ctxt.dictNames, sizeof(ctxt.dictNames), "dictNames");
    
    /* Make localname symbolic */
    klee_make_symbolic(localname_buf, sizeof(localname_buf), "localname");
    localname_buf[31] = '\0'; /* Ensure null termination */
    
    /* Call the target function */
    xmlSAX2GetAttribute(&ctxt, localname_buf, &ns);
    
    return 0;
}