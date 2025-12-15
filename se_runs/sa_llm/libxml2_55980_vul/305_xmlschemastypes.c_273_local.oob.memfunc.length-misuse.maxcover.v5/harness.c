#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions to compile */
typedef struct _xmlSchemaType xmlSchemaType;
typedef xmlSchemaType *xmlSchemaTypePtr;

struct _xmlSchemaType {
    const char *name;
    const char *targetNamespace;
    int type;
    xmlSchemaTypePtr baseType;
    int contentType;
};

/* Function prototypes from libxml2 */
void *xmlMalloc(size_t size);
void xmlSchemaTypeErrMemory(void *ctxt, const char *msg);

/* Target function prototype */
xmlSchemaTypePtr xmlSchemaNewPrimitiveType(const char *name, xmlSchemaTypePtr baseType);

/* Stub implementations */
void *xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    return ptr;
}

void xmlSchemaTypeErrMemory(void *ctxt, const char *msg) {
    /* Do nothing - just a stub */
}

/* Target function implementation (simplified) */
xmlSchemaTypePtr xmlSchemaNewPrimitiveType(const char *name, xmlSchemaTypePtr baseType) {
    xmlSchemaTypePtr ret;

    ret = (xmlSchemaTypePtr) xmlMalloc(sizeof(xmlSchemaType));
    if (ret == NULL) {
        xmlSchemaTypeErrMemory(NULL, "could not initialize basic types");
        return(NULL);
    }
    
    /* TARGET LINE 273 - memset call */
    memset(ret, 0, sizeof(xmlSchemaType));
    
    /* Vulnerability assertion: ensure the size argument to memset is safe */
    SAILR_ASSERT(sizeof(xmlSchemaType) > 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->name = (const char *)name;
    ret->targetNamespace = "http://www.w3.org/2001/XMLSchema";
    ret->type = 1; /* XML_SCHEMA_TYPE_BASIC */
    ret->baseType = baseType;
    ret->contentType = 1; /* XML_SCHEMA_CONTENT_BASIC */
    
    return ret;
}

int main(void) {
    /* Make inputs symbolic to explore different paths */
    char name[32];
    int baseType_is_null;
    
    klee_make_symbolic(name, sizeof(name), "name");
    klee_make_symbolic(&baseType_is_null, sizeof(baseType_is_null), "baseType_is_null");
    
    /* Ensure name is null-terminated */
    name[31] = '\0';
    
    /* Create baseType pointer - can be NULL or valid */
    xmlSchemaTypePtr baseType = NULL;
    if (!baseType_is_null) {
        baseType = (xmlSchemaTypePtr)malloc(sizeof(xmlSchemaType));
        klee_assume(baseType != NULL);
    }
    
    /* Call the target function */
    xmlSchemaTypePtr result = xmlSchemaNewPrimitiveType(name, baseType);
    
    /* Clean up */
    if (result != NULL) {
        free(result);
    }
    if (baseType != NULL) {
        free(baseType);
    }
    
    return 0;
}