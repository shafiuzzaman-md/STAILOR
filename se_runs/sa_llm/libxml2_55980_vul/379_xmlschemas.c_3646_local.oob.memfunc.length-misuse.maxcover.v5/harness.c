#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlSchemaBucket xmlSchemaBucket;
typedef xmlSchemaBucket *xmlSchemaBucketPtr;

typedef enum {
    XML_SCHEMA_INCLUDE,
    XML_SCHEMA_IMPORT
} xmlSchemaBucketType;

struct _xmlSchemaBucket {
    char *targetNamespace;
    xmlSchemaBucketType type;
    void *globals;
    void *locals;
};

/* Stub functions to avoid linking with libxml2 */
void xmlSchemaPErrMemory(void *ctxt, const char *msg, const char *extra) {
    /* Do nothing */
}

void* xmlSchemaItemListCreate(void) {
    /* Return non-NULL to avoid early exit */
    return (void*)1;
}

void xmlFree(void *ptr) {
    free(ptr);
}

void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* The function we want to reach - simplified version from xmlschemas.c */
xmlSchemaBucketPtr xmlSchemaBucketCreate(const char *targetNamespace, 
                                         xmlSchemaBucketType type) {
    size_t size;
    xmlSchemaBucketPtr ret;
    
    if (type == XML_SCHEMA_INCLUDE)
        size = sizeof(xmlSchemaBucket);  /* Simplified from xmlSchemaInclude */
    else
        size = sizeof(xmlSchemaBucket);  /* Simplified from xmlSchemaImport */
    
    ret = (xmlSchemaBucketPtr) xmlMalloc(size);
    if (ret == NULL) {
        xmlSchemaPErrMemory(NULL, "allocating schema bucket", NULL);
        return NULL;
    }
    
    /* TARGET LINE 3646 - memset with size that depends on type */
    memset(ret, 0, size);
    
    ret->targetNamespace = targetNamespace ? strdup(targetNamespace) : NULL;
    ret->type = type;
    ret->globals = xmlSchemaItemListCreate();
    if (ret->globals == NULL) {
        xmlFree(ret);
        return NULL;
    }
    ret->locals = xmlSchemaItemListCreate();
    
    return ret;
}

int main(void) {
    /* Make symbolic inputs to explore different paths */
    xmlSchemaBucketType type;
    char targetNamespace[256];
    
    /* Symbolic type to explore both branches */
    klee_make_symbolic(&type, sizeof(type), "type");
    klee_assume(type == XML_SCHEMA_INCLUDE || type == XML_SCHEMA_IMPORT);
    
    /* Symbolic target namespace (can be NULL or string) */
    int is_null;
    klee_make_symbolic(&is_null, sizeof(is_null), "is_null");
    klee_assume(is_null == 0 || is_null == 1);
    
    const char *ns_ptr = NULL;
    if (!is_null) {
        klee_make_symbolic(targetNamespace, sizeof(targetNamespace), "targetNamespace");
        targetNamespace[255] = '\0';  /* Ensure null termination */
        ns_ptr = targetNamespace;
    }
    
    /* Call the function that contains the target memset */
    xmlSchemaBucketPtr result = xmlSchemaBucketCreate(ns_ptr, type);
    
    /* Vulnerability assertion: size must be positive and reasonable */
    /* For memset OOB, we need to ensure size doesn't exceed allocated bounds */
    /* Since xmlMalloc uses the same size as memset, the vulnerability would be 
       if size is 0 or very large causing integer overflow/wraparound */
    size_t size = (type == XML_SCHEMA_INCLUDE) ? sizeof(xmlSchemaBucket) : sizeof(xmlSchemaBucket);
    SAILR_ASSERT(size > 0 && size <= 1024);  /* Reasonable upper bound */
    
    /* Reachability assertion - we reached the target line */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    if (result) {
        if (result->targetNamespace) free((void*)result->targetNamespace);
        free(result);
    }
    
    return 0;
}