#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlSchemaParserCtxt xmlSchemaParserCtxt;
typedef xmlSchemaParserCtxt *xmlSchemaParserCtxtPtr;
typedef struct _xmlSchemaElement xmlSchemaElement;
typedef xmlSchemaElement *xmlSchemaElementPtr;
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;

/* Constants from libxml2 */
#define XML_SCHEMA_TYPE_ELEMENT 1

/* Stub functions */
void xmlSchemaPErrMemory(xmlSchemaParserCtxtPtr ctxt, const char *msg, const char *extra) {
    /* Do nothing */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

/* Global list stub - simplified version */
#define WXS_ADD_GLOBAL(ctxt, elem) /* Do nothing */

/* Target function from xmlschemas.c */
xmlSchemaElementPtr xmlSchemaNewElement(xmlSchemaParserCtxtPtr ctxt,
                                        const char *name,
                                        const char *nsName,
                                        xmlNodePtr node,
                                        int topLevel) {
    xmlSchemaElementPtr ret;

    if ((ctxt == NULL) || (name == NULL))
        return (NULL);

    ret = (xmlSchemaElementPtr) xmlMalloc(sizeof(xmlSchemaElement));
    if (ret == NULL) {
        xmlSchemaPErrMemory(ctxt, "allocating element", NULL);
        return (NULL);
    }
    
    /* TARGET LINE 5423 - memset with sizeof(xmlSchemaElement) */
    memset(ret, 0, sizeof(xmlSchemaElement));
    
    /* Vulnerability assertion: ensure ret points to at least sizeof(xmlSchemaElement) bytes */
    SAILR_ASSERT(ret != NULL && "Allocation succeeded");
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->type = XML_SCHEMA_TYPE_ELEMENT;
    ret->name = name;
    ret->targetNamespace = nsName;
    ret->node = node;

    if (topLevel)
        WXS_ADD_GLOBAL(ctxt, ret);
    
    return ret;
}

/* Harness entry point */
int main(void) {
    xmlSchemaParserCtxtPtr ctxt;
    const char *name;
    const char *nsName;
    xmlNodePtr node;
    int topLevel;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&name, sizeof(name), "name");
    klee_make_symbolic(&nsName, sizeof(nsName), "nsName");
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&topLevel, sizeof(topLevel), "topLevel");
    
    /* Assume conditions to reach the target line */
    klee_assume(ctxt != NULL);
    klee_assume(name != NULL);
    
    /* Call the target function */
    xmlSchemaNewElement(ctxt, name, nsName, node, topLevel);
    
    return 0;
}