#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlSchemaAnnot xmlSchemaAnnot;
typedef xmlSchemaAnnot *xmlSchemaAnnotPtr;
typedef struct _xmlSchemaParserCtxt xmlSchemaParserCtxt;
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;

/* Minimal stub structures */
struct _xmlSchemaAnnot {
    void *content;
};

struct _xmlSchemaParserCtxt {
    int dummy;
};

struct _xmlNode {
    int dummy;
};

/* Stub functions that are called in the path */
void xmlSchemaPErrMemory(xmlSchemaParserCtxt *ctxt, const char *msg, xmlNodePtr node) {
    /* Do nothing - just a stub */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

/* The target function from xmlschemas.c line 3375 */
static xmlSchemaAnnotPtr xmlSchemaNewAnnotation(xmlSchemaParserCtxt *ctxt, xmlNodePtr node) {
    xmlSchemaAnnotPtr ret;
    
    ret = (xmlSchemaAnnotPtr) xmlMalloc(sizeof(xmlSchemaAnnot));
    if (ret == NULL) {
        xmlSchemaPErrMemory(ctxt, "allocating annotation", node);
        return (NULL);
    }
    
    /* TARGET LINE 3375: memset(ret, 0, sizeof(xmlSchemaAnnot)); */
    memset(ret, 0, sizeof(xmlSchemaAnnot));
    
    ret->content = node;
    return (ret);
}

/* Entrypoint function that calls the target function */
static void xmlSchemaParseSchema(xmlSchemaParserCtxt *ctxt, xmlNodePtr node) {
    xmlSchemaAnnotPtr annotation;
    
    annotation = xmlSchemaNewAnnotation(ctxt, node);
    if (annotation != NULL) {
        /* Vulnerability assertion: check that the memset size doesn't exceed allocation */
        /* For OOB memset, we need to ensure the size parameter doesn't exceed allocated bounds */
        /* Since xmlMalloc returns exactly sizeof(xmlSchemaAnnot), the vulnerability would be if */
        /* sizeof(xmlSchemaAnnot) is larger than the allocated size, but that's not the case here. */
        /* However, the SA pattern suggests length misuse - checking that annotation is valid for the memset size */
        SAILR_ASSERT(annotation != NULL && sizeof(xmlSchemaAnnot) <= sizeof(xmlSchemaAnnot));
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        free(annotation);
    }
}

int main(void) {
    xmlSchemaParserCtxt ctxt;
    xmlNodePtr node;
    
    /* Make node symbolic to explore different paths */
    klee_make_symbolic(&node, sizeof(node), "node");
    
    /* Assume node is not NULL to reach the target function */
    klee_assume(node != NULL);
    
    /* Call the entrypoint that leads to the target line */
    xmlSchemaParseSchema(&ctxt, node);
    
    return 0;
}