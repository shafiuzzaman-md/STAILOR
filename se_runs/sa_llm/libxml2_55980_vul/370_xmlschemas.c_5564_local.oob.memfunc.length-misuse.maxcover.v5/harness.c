#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed to compile */
typedef struct _xmlSchemaParserCtxt xmlSchemaParserCtxt;
typedef xmlSchemaParserCtxt *xmlSchemaParserCtxtPtr;

typedef struct _xmlSchemaModelGroup xmlSchemaModelGroup;
typedef xmlSchemaModelGroup *xmlSchemaModelGroupPtr;

typedef enum {
    XML_SCHEMA_TYPE_SEQUENCE,
    XML_SCHEMA_TYPE_CHOICE,
    XML_SCHEMA_TYPE_ALL,
    XML_SCHEMA_TYPE_GROUP
} xmlSchemaModelGroupType;

/* Stub functions */
void xmlSchemaPErrMemory(xmlSchemaParserCtxtPtr ctxt, const char *msg, const char *extra) {
    /* Do nothing */
}

void WXS_ADD_LOCAL(xmlSchemaParserCtxtPtr ctxt, xmlSchemaModelGroupPtr group) {
    /* Do nothing */
}

void WXS_ADD_PENDING(xmlSchemaParserCtxtPtr ctxt, xmlSchemaModelGroupPtr group) {
    /* Do nothing */
}

/* The target function from xmlschemas.c:5564 */
xmlSchemaModelGroupPtr xmlSchemaNewModelGroup(xmlSchemaParserCtxtPtr ctxt,
                                              xmlSchemaModelGroupType type,
                                              void *node) {
    xmlSchemaModelGroupPtr ret;

    ret = (xmlSchemaModelGroupPtr)malloc(sizeof(xmlSchemaModelGroup));
    if (ret == NULL) {
        xmlSchemaPErrMemory(ctxt, "allocating model group component", NULL);
        return (NULL);
    }
    
    /* TARGET LINE: 5564 - memset with sizeof(xmlSchemaModelGroup) */
    memset(ret, 0, sizeof(xmlSchemaModelGroup));
    
    /* Vulnerability assertion: ensure the allocated size is at least sizeof(xmlSchemaModelGroup) */
    SAILR_ASSERT(sizeof(xmlSchemaModelGroup) <= sizeof(xmlSchemaModelGroup));
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->type = type;
    ret->node = node;
    WXS_ADD_LOCAL(ctxt, ret);
    if ((type == XML_SCHEMA_TYPE_SEQUENCE) ||
        (type == XML_SCHEMA_TYPE_CHOICE))
        WXS_ADD_PENDING(ctxt, ret);
    return (ret);
}

/* Entry point */
int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    xmlSchemaModelGroupType type;
    void *node;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&type, sizeof(type), "type");
    klee_make_symbolic(&node, sizeof(node), "node");
    
    /* Assume ctxt is non-NULL to avoid early exit in stubs */
    klee_assume(ctxt != NULL);
    
    /* Call the target function */
    xmlSchemaModelGroupPtr result = xmlSchemaNewModelGroup(ctxt, type, node);
    
    /* Clean up if allocation succeeded */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}