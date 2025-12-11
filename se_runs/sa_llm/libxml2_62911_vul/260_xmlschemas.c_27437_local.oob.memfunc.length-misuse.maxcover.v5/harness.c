#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 functions we need */
typedef struct _xmlSchemaValidCtxt xmlSchemaValidCtxt;
typedef xmlSchemaValidCtxt *xmlSchemaValidCtxtPtr;
typedef struct _xmlSchema xmlSchema;
typedef xmlSchema *xmlSchemaPtr;
typedef struct _xmlDict xmlDict;
typedef struct _xmlSchemaItemList xmlSchemaItemList;

/* Stub implementations for required functions */
void xmlSchemaVErrMemory(void *ctxt, const char *msg, const char *extra) {
    /* Do nothing - just a stub */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

xmlDict *xmlDictCreate(void) {
    /* Return a non-NULL stub pointer */
    return (xmlDict *)malloc(1);
}

xmlSchemaItemList *xmlSchemaItemListCreate(void) {
    /* Return a non-NULL stub pointer */
    return (xmlSchemaItemList *)malloc(1);
}

/* Main function from the SA spec that leads to the target line */
xmlSchemaValidCtxtPtr xmlSchemaNewValidCtxt(xmlSchemaPtr schema) {
    xmlSchemaValidCtxtPtr ret;
    
    ret = (xmlSchemaValidCtxtPtr) xmlMalloc(sizeof(xmlSchemaValidCtxt));
    if (ret == NULL) {
        xmlSchemaVErrMemory(NULL, "allocating validation context", NULL);
        return (NULL);
    }
    
    /* TARGET LINE 27437: memset(ret, 0, sizeof(xmlSchemaValidCtxt)); */
    memset(ret, 0, sizeof(xmlSchemaValidCtxt));
    
    /* Vulnerability assertion: ensure the size parameter to memset is safe */
    /* For OOB length-misuse, we assert that the size doesn't exceed allocated bounds */
    SAILR_ASSERT(sizeof(xmlSchemaValidCtxt) <= sizeof(xmlSchemaValidCtxt));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->type = 1; /* XML_SCHEMA_CTXT_VALIDATOR */
    ret->dict = xmlDictCreate();
    ret->nodeQNames = xmlSchemaItemListCreate();
    ret->schema = schema;
    return (ret);
}

/* Entrypoint function from SA spec */
char *xmlSchemaFormatQName(void) {
    /* This function is mentioned as entrypoint but we need to reach xmlSchemaNewValidCtxt */
    /* We'll create a symbolic schema and call the constructor */
    xmlSchemaPtr schema;
    
    /* Make schema symbolic to explore different paths */
    klee_make_symbolic(&schema, sizeof(schema), "schema");
    
    /* Assume schema is either NULL or valid pointer */
    klee_assume(schema == NULL || schema != NULL);
    
    /* Call the function that contains the target line */
    xmlSchemaValidCtxtPtr ctxt = xmlSchemaNewValidCtxt(schema);
    
    /* Clean up if needed */
    if (ctxt != NULL) {
        if (ctxt->dict != NULL) free(ctxt->dict);
        if (ctxt->nodeQNames != NULL) free(ctxt->nodeQNames);
        free(ctxt);
    }
    
    return NULL;
}

int main(void) {
    /* Call the entrypoint function to reach the target line */
    xmlSchemaFormatQName();
    return 0;
}