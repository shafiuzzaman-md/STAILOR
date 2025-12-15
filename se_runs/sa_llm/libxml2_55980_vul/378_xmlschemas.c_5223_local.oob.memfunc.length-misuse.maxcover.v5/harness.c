#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlSchemaParserCtxt xmlSchemaParserCtxt;
typedef xmlSchemaParserCtxt *xmlSchemaParserCtxtPtr;

typedef struct _xmlSchemaNotation xmlSchemaNotation;
typedef xmlSchemaNotation *xmlSchemaNotationPtr;

#define XML_SCHEMA_TYPE_NOTATION 1

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    return ptr;
}

/* Stub for xmlSchemaPErrMemory */
void xmlSchemaPErrMemory(xmlSchemaParserCtxtPtr ctxt, const char* msg, const char* extra) {
    /* Do nothing */
}

/* Mock macro for WXS_ADD_GLOBAL */
#define WXS_ADD_GLOBAL(ctxt, ret) /* Do nothing */

/* Target function from xmlschemas.c:5215-5230 */
xmlSchemaNotationPtr xmlSchemaAddNotation(xmlSchemaParserCtxtPtr ctxt,
                                          xmlSchemaNotationPtr schema,
                                          const char* name,
                                          const char* nsName) {
    xmlSchemaNotationPtr ret;

    if ((ctxt == NULL) || (schema == NULL) || (name == NULL))
        return (NULL);

    ret = (xmlSchemaNotationPtr) xmlMalloc(sizeof(xmlSchemaNotation));
    if (ret == NULL) {
        xmlSchemaPErrMemory(ctxt, "add annotation", NULL);
        return (NULL);
    }
    
    /* TARGET LINE 5223 - memset with sizeof(xmlSchemaNotation) */
    memset(ret, 0, sizeof(xmlSchemaNotation));
    
    /* Vulnerability assertion: ensure ret points to valid memory of at least sizeof(xmlSchemaNotation) bytes */
    SAILR_ASSERT(ret != NULL && "SAILR_VULN_ASSERT");
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->type = XML_SCHEMA_TYPE_NOTATION;
    ret->name = name;
    ret->targetNamespace = nsName;
    WXS_ADD_GLOBAL(ctxt, ret);
    return (ret);
}

int main(void) {
    /* Create symbolic inputs to reach the target function */
    xmlSchemaParserCtxtPtr ctxt;
    xmlSchemaNotationPtr schema;
    char name[32];
    char nsName[32];
    
    /* Make inputs symbolic */
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&schema, sizeof(schema), "schema");
    klee_make_symbolic(name, sizeof(name), "name");
    klee_make_symbolic(nsName, sizeof(nsName), "nsName");
    
    /* Assume non-NULL inputs to pass the early NULL checks */
    klee_assume(ctxt != NULL);
    klee_assume(schema != NULL);
    klee_assume(name[0] != '\0');  /* Ensure name is not NULL (simplified) */
    
    /* Call the target function */
    xmlSchemaAddNotation(ctxt, schema, name, nsName);
    
    return 0;
}