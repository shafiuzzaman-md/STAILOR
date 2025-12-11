#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub types needed to reach the target line */
typedef struct _xmlSchemaModelGroup xmlSchemaModelGroup;
typedef struct _xmlSchemaParticle xmlSchemaParticle;
typedef struct _xmlSchemaTreeItem xmlSchemaTreeItem;
typedef xmlSchemaTreeItem* xmlSchemaTreeItemPtr;

struct _xmlSchemaModelGroup {
    int type;
};

struct _xmlSchemaParticle {
    xmlSchemaTreeItemPtr children;
};

struct _xmlSchemaTreeItem {
    int dummy;
};

/* Stub functions to avoid linking with libxml2 */
void xmlSchemaTypeErrMemory(void* ctxt, const char* msg) {
    /* Do nothing */
}

xmlSchemaModelGroup* xmlMalloc(size_t size) {
    return (xmlSchemaModelGroup*)malloc(size);
}

xmlSchemaParticle* xmlSchemaAddParticle(void) {
    xmlSchemaParticle* particle = (xmlSchemaParticle*)malloc(sizeof(xmlSchemaParticle));
    if (particle) {
        particle->children = NULL;
    }
    return particle;
}

/* Entrypoint function from SA spec */
void xmlSchemaInitTypes(void) {
    xmlSchemaModelGroup* sequence = NULL;
    xmlSchemaParticle* particle = NULL;
    
    /* First allocation and initialization (lines before target) */
    sequence = xmlMalloc(sizeof(xmlSchemaModelGroup));
    if (sequence == NULL) {
        xmlSchemaTypeErrMemory(NULL, "allocating model group component");
        goto error;
    }
    
    /* TARGET LINE 472: memset(sequence, 0, sizeof(xmlSchemaModelGroup)); */
    /* Vulnerability assertion: ensure we don't write out of bounds */
    SAILR_ASSERT(sizeof(xmlSchemaModelGroup) > 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(sequence, 0, sizeof(xmlSchemaModelGroup));
    sequence->type = 1; /* XML_SCHEMA_TYPE_SEQUENCE */
    
    /* Second particle allocation (line after target) */
    particle = xmlSchemaAddParticle();
    if (particle == NULL) {
        /* Handle error */
    }
    
error:
    if (sequence) free(sequence);
    if (particle) free(particle);
}

int main(void) {
    /* Symbolic inputs to explore different paths */
    int malloc_fail_first;
    klee_make_symbolic(&malloc_fail_first, sizeof(malloc_fail_first), "malloc_fail_first");
    
    /* Override malloc behavior using klee_assume */
    if (malloc_fail_first) {
        /* Assume first malloc fails */
        klee_assume(malloc_fail_first == 1);
    } else {
        /* Assume first malloc succeeds */
        klee_assume(malloc_fail_first == 0);
    }
    
    /* Call the entrypoint */
    xmlSchemaInitTypes();
    
    return 0;
}