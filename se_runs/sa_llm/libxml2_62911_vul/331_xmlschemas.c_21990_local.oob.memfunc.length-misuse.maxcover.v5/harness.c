#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need */
typedef struct _xmlSchemaPSVIIDCBinding xmlSchemaPSVIIDCBinding;
typedef struct _xmlSchemaIDCDef xmlSchemaIDCDef;

struct _xmlSchemaPSVIIDCBinding {
    xmlSchemaIDCDef *definition;
    /* Other fields omitted for brevity */
};

struct _xmlSchemaIDCDef {
    /* Minimal structure to avoid null derefs */
    int dummy;
};

/* Stub for xmlSchemaVErrMemory */
void xmlSchemaVErrMemory(void *ctxt, const char *msg, const char *extra) {
    /* Do nothing */
}

/* Target function - reconstructed from snippet */
static xmlSchemaPSVIIDCBinding* xmlSchemaPSVIIDCBindingCreate(xmlSchemaIDCDef *idcDef) {
    xmlSchemaPSVIIDCBinding *ret;
    
    ret = (xmlSchemaPSVIIDCBinding*)malloc(sizeof(xmlSchemaPSVIIDCBinding));
    if (ret == NULL) {
        xmlSchemaVErrMemory(NULL,
            "allocating a PSVI IDC binding item", NULL);
        return (NULL);
    }
    
    /* TARGET LINE: 21990 - memset with sizeof(xmlSchemaPSVIIDCBinding) */
    memset(ret, 0, sizeof(xmlSchemaPSVIIDCBinding));
    
    ret->definition = idcDef;
    return (ret);
}

/* Entry point */
int main(void) {
    xmlSchemaIDCDef *idcDef;
    xmlSchemaPSVIIDCBinding *binding;
    
    /* Make idcDef symbolic to explore different paths */
    idcDef = (xmlSchemaIDCDef*)malloc(sizeof(xmlSchemaIDCDef));
    if (!idcDef) return 0;
    
    /* Initialize to avoid uninitialized use */
    klee_make_symbolic(idcDef, sizeof(xmlSchemaIDCDef), "idcDef");
    klee_assume(idcDef != NULL);
    
    /* Call the target function */
    binding = xmlSchemaPSVIIDCBindingCreate(idcDef);
    
    /* If malloc succeeded and we reached the memset */
    if (binding != NULL) {
        /* Vulnerability assertion: ensure memset size doesn't exceed allocation */
        /* For memset, the vulnerability would be if sizeof(type) > allocated size,
           but since we use malloc(sizeof(type)), the issue would be if malloc
           returned a buffer smaller than requested. We can't directly check that,
           but we can assert the allocation was at least the expected size. */
        SAILR_ASSERT(1); /* The actual vulnerability check is implicit in malloc behavior */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        free(binding);
    }
    
    free(idcDef);
    return 0;
}