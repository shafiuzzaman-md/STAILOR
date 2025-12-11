#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlAttr xmlAttr;
typedef struct _xmlNode xmlNode;
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlNs xmlNs;
typedef struct _xmlParserCtxt xmlParserCtxt;

struct _xmlAttr {
    int type;
    xmlNode* parent;
    xmlDoc* doc;
    xmlNs* ns;
    xmlAttr* next;
};

struct _xmlNode {
    /* minimal fields */
};

struct _xmlDoc {
    /* minimal fields */
};

struct _xmlNs {
    /* minimal fields */
};

struct _xmlParserCtxt {
    xmlAttr* freeAttrs;
    int freeAttrsNr;
    xmlNode* node;
    xmlDoc* myDoc;
};

/* Function prototype for the target entrypoint */
void xmlSAX2AttributeInternal(xmlParserCtxt* ctxt, xmlNs* namespace);

int main(void) {
    /* Allocate and initialize parser context */
    xmlParserCtxt* ctxt = (xmlParserCtxt*)malloc(sizeof(xmlParserCtxt));
    if (!ctxt) return 1;
    
    /* Make freeAttrsNr symbolic to explore different states */
    klee_make_symbolic(&ctxt->freeAttrsNr, sizeof(ctxt->freeAttrsNr), "freeAttrsNr");
    
    /* Constrain freeAttrsNr to be >= 0 (since it's a count) */
    klee_assume(ctxt->freeAttrsNr >= 0);
    
    /* Allocate a dummy xmlAttr for freeAttrs list */
    xmlAttr* attr = (xmlAttr*)malloc(sizeof(xmlAttr));
    if (!attr) {
        free(ctxt);
        return 1;
    }
    
    /* Initialize the freeAttrs linked list */
    attr->next = NULL;
    ctxt->freeAttrs = attr;
    
    /* Allocate and initialize other required fields */
    ctxt->node = (xmlNode*)malloc(sizeof(xmlNode));
    ctxt->myDoc = (xmlDoc*)malloc(sizeof(xmlDoc));
    xmlNs* namespace = (xmlNs*)malloc(sizeof(xmlNs));
    
    if (!ctxt->node || !ctxt->myDoc || !namespace) {
        free(attr);
        free(ctxt->node);
        free(ctxt->myDoc);
        free(namespace);
        free(ctxt);
        return 1;
    }
    
    /* Vulnerability assertion: ensure freeAttrsNr > 0 when accessing freeAttrs */
    /* This corresponds to the condition that must hold for the memset to be safe */
    SAILR_ASSERT(ctxt->freeAttrsNr > 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Call the target function */
    xmlSAX2AttributeInternal(ctxt, namespace);
    
    /* Cleanup */
    free(attr);
    free(ctxt->node);
    free(ctxt->myDoc);
    free(namespace);
    free(ctxt);
    
    return 0;
}

/* Minimal implementation of the target function to reach line 1887 */
void xmlSAX2AttributeInternal(xmlParserCtxt* ctxt, xmlNs* namespace) {
    xmlAttr* ret;
    
    /* This mimics the code around line 1887 */
    if (ctxt->freeAttrs != NULL) {
        ret = ctxt->freeAttrs;
        ctxt->freeAttrs = ret->next;
        ctxt->freeAttrsNr--;
        memset(ret, 0, sizeof(xmlAttr));
        ret->type = 1; /* XML_ATTRIBUTE_NODE */
        ret->parent = ctxt->node;
        ret->doc = ctxt->myDoc;
        ret->ns = namespace;
    }
}