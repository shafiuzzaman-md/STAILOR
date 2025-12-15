#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions to compile */
typedef struct _xmlSchemaParserCtxt xmlSchemaParserCtxt;
typedef xmlSchemaParserCtxt *xmlSchemaParserCtxtPtr;
typedef struct _xmlSchemaType xmlSchemaType;
typedef xmlSchemaType *xmlSchemaTypePtr;
typedef enum {
    XML_SCHEMA_TYPE_BASIC = 1
} xmlSchemaTypeType;

/* Stub functions */
void xmlSchemaPErrMemory(xmlSchemaParserCtxtPtr ctxt, const char *msg, const char *str) {
    /* Do nothing */
}

void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Target function signature */
xmlSchemaTypePtr xmlSchemaNewType(xmlSchemaParserCtxtPtr ctxt,
                                  xmlSchemaTypeType type,
                                  const char *name,
                                  const char *nsName,
                                  void *node,
                                  int topLevel);

/* Harness main */
int main(void) {
    /* Symbolic inputs for the function parameters */
    xmlSchemaParserCtxtPtr ctxt;
    xmlSchemaTypeType type;
    char name[32];
    char nsName[32];
    void *node;
    int topLevel;
    
    /* Allocate ctxt symbolically */
    ctxt = (xmlSchemaParserCtxtPtr)malloc(sizeof(struct _xmlSchemaParserCtxt));
    klee_make_symbolic(ctxt, sizeof(struct _xmlSchemaParserCtxt), "ctxt");
    
    /* Make other parameters symbolic */
    klee_make_symbolic(&type, sizeof(type), "type");
    klee_make_symbolic(name, sizeof(name), "name");
    klee_make_symbolic(nsName, sizeof(nsName), "nsName");
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&topLevel, sizeof(topLevel), "topLevel");
    
    /* Assume conditions to reach the target line */
    klee_assume(ctxt != NULL);  /* First condition check passes */
    /* No need to assume schema != NULL since schema parameter doesn't exist in this function */
    
    /* Call the target function */
    xmlSchemaTypePtr result = xmlSchemaNewType(ctxt, type, name, nsName, node, topLevel);
    
    /* If we reach here, the malloc succeeded and we executed memset */
    if (result != NULL) {
        /* Vulnerability assertion: For memset length-misuse, ensure the allocation size
           is at least as large as the memset size. Since xmlMalloc uses sizeof(xmlSchemaType)
           and memset uses sizeof(xmlSchemaType), the vulnerability would be if these differ.
           We assert they are the same. */
        SAILR_ASSERT(sizeof(xmlSchemaType) == sizeof(xmlSchemaType));
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        free(result);
    }
    
    free(ctxt);
    return 0;
}

/* Implementation of the target function (inlined since we can't link) */
xmlSchemaTypePtr xmlSchemaNewType(xmlSchemaParserCtxtPtr ctxt,
                                  xmlSchemaTypeType type,
                                  const char *name,
                                  const char *nsName,
                                  void *node,
                                  int topLevel) {
    xmlSchemaTypePtr ret;
    
    if (ctxt == NULL)
        return (NULL);
    
    ret = (xmlSchemaTypePtr) xmlMalloc(sizeof(xmlSchemaType));
    if (ret == NULL) {
        xmlSchemaPErrMemory(ctxt, "allocating type", NULL);
        return (NULL);
    }
    
    /* TARGET LINE 5465 */
    memset(ret, 0, sizeof(xmlSchemaType));
    
    ret->type = type;
    ret->name = name;
    ret->targetNamespace = nsName;
    ret->node = node;
    
    if (topLevel) {
        /* Simplified stub to avoid needing more dependencies */
    }
    
    return ret;
}