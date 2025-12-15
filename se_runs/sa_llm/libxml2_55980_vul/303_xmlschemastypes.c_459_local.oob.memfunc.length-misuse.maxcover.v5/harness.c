#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlSchemaWildcard xmlSchemaWildcard;
struct _xmlSchemaWildcard {
    int any;
    int processContents;
};

typedef struct _xmlSchemaType xmlSchemaType;
struct _xmlSchemaType {
    xmlSchemaWildcard *attributeWildcard;
};

/* Global variables referenced in the target code */
xmlSchemaType *xmlSchemaTypeAnyTypeDef = NULL;

/* Stub functions to avoid linking issues */
void xmlSchemaTypeErrMemory(void *ctxt, const char *msg) {
    /* Do nothing - just a stub */
}

xmlSchemaType *xmlSchemaInitBasicType(const char *name, int type, xmlSchemaType *parent) {
    /* Return a dummy pointer */
    static xmlSchemaType dummy;
    return &dummy;
}

/* Simulate xmlMalloc */
void *xmlMalloc(size_t size) {
    /* Use symbolic control to potentially return NULL */
    int should_fail;
    klee_make_symbolic(&should_fail, sizeof(should_fail), "should_fail");
    klee_assume(should_fail == 0 || should_fail == 1);
    
    if (should_fail) {
        return NULL;
    }
    
    /* Allocate memory with symbolic size to explore different allocation scenarios */
    size_t alloc_size;
    klee_make_symbolic(&alloc_size, sizeof(alloc_size), "alloc_size");
    
    /* Ensure alloc_size is at least the requested size for successful allocation */
    klee_assume(alloc_size >= size);
    
    void *ptr = malloc(alloc_size);
    if (ptr == NULL) {
        return NULL;
    }
    
    /* Make the allocated memory symbolic */
    klee_make_symbolic(ptr, alloc_size, "allocated_memory");
    
    return ptr;
}

/* Entry point that leads to the target memset call */
void target_function(void) {
    /* Create the attribute wildcard - mimicking the target code */
    xmlSchemaWildcard *wild = (xmlSchemaWildcardPtr) xmlMalloc(sizeof(xmlSchemaWildcard));
    
    if (wild == NULL) {
        xmlSchemaTypeErrMemory(NULL, "could not create an attribute wildcard on anyType");
        return;
    }
    
    /* VULNERABILITY ASSERTION: Check that the allocated memory region 
       is at least as large as the sizeof(xmlSchemaWildcard) before memset */
    size_t allocated_size = __builtin_object_size(wild, 0);
    SAILR_ASSERT(allocated_size >= sizeof(xmlSchemaWildcard));
    
    /* REACHABILITY ASSERTION: Mark that we reached the vulnerable memset */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* The actual memset call from line 459 */
    memset(wild, 0, sizeof(xmlSchemaWildcard));
    
    wild->any = 1;
    wild->processContents = 1; /* XML_SCHEMAS_ANY_LAX */
    
    /* Ensure xmlSchemaTypeAnyTypeDef is initialized */
    if (xmlSchemaTypeAnyTypeDef == NULL) {
        xmlSchemaTypeAnyTypeDef = (xmlSchemaType *)malloc(sizeof(xmlSchemaType));
        klee_make_symbolic(xmlSchemaTypeAnyTypeDef, sizeof(xmlSchemaType), "anyTypeDef");
    }
    
    xmlSchemaTypeAnyTypeDef->attributeWildcard = wild;
}

int main(void) {
    /* Initialize global variable */
    xmlSchemaTypeAnyTypeDef = (xmlSchemaType *)malloc(sizeof(xmlSchemaType));
    if (xmlSchemaTypeAnyTypeDef == NULL) {
        return 1;
    }
    
    klee_make_symbolic(xmlSchemaTypeAnyTypeDef, sizeof(xmlSchemaType), "anyTypeDef_init");
    
    /* Call the function that contains the target memset */
    target_function();
    
    /* Cleanup */
    if (xmlSchemaTypeAnyTypeDef) {
        free(xmlSchemaTypeAnyTypeDef);
    }
    
    return 0;
}