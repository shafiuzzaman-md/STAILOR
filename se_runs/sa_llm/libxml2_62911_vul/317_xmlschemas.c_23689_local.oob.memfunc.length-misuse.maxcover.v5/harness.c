#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlSchemaIDCBinding xmlSchemaIDCBinding;
typedef struct _xmlSchemaPSVIIDCNode xmlSchemaPSVIIDCNode;
typedef xmlSchemaPSVIIDCNode* xmlSchemaPSVIIDCNodePtr;

struct _xmlSchemaIDCBinding {
    int nbNodes;
    xmlSchemaPSVIIDCNodePtr* nodeTable;
    int sizeNodes;
    int dupls;
};

struct _xmlSchemaPSVIIDCNode {
    /* Minimal stub structure */
    int dummy;
};

/* Stub functions needed to reach the target */
void xmlSchemaIDCFreeBinding(xmlSchemaIDCBinding* bind) {
    /* Stub implementation */
    if (bind && bind->nodeTable) {
        free(bind->nodeTable);
    }
}

/* Entrypoint function that leads to the vulnerable memcpy */
void xmlSchemaParseRedefine(xmlSchemaIDCBinding* bind) {
    xmlSchemaIDCBinding* parBind;
    
    if (bind) {
        parBind = (xmlSchemaIDCBinding*)malloc(sizeof(xmlSchemaIDCBinding));
        if (!parBind) {
            goto internal_error;
        }
        
        /* Initialize parBind */
        parBind->nodeTable = NULL;
        parBind->nbNodes = 0;
        parBind->sizeNodes = 0;
        parBind->dupls = 0;
        
        if (bind->nbNodes > 0) {
            parBind->nodeTable = (xmlSchemaPSVIIDCNodePtr*)malloc(
                bind->nbNodes * sizeof(xmlSchemaPSVIIDCNodePtr));
            if (!parBind->nodeTable) {
                xmlSchemaIDCFreeBinding(parBind);
                goto internal_error;
            }
            
            /* TARGET LINE 23689: memcpy(parBind->nodeTable, bind->nodeTable,
               bind->nbNodes * sizeof(xmlSchemaPSVIIDCNodePtr)); */
            
            /* Vulnerability assertion: ensure we don't copy more than allocated */
            SAILR_ASSERT(bind->nbNodes <= parBind->sizeNodes);
            
            /* Reachability marker */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            
            /* The actual memcpy call */
            memcpy(parBind->nodeTable, bind->nodeTable,
                   bind->nbNodes * sizeof(xmlSchemaPSVIIDCNodePtr));
            
            parBind->sizeNodes = bind->nbNodes;
            parBind->nbNodes = bind->nbNodes;
        }
        
        if (bind->dupls) {
            /* Handle dupls case - stub */
        }
        
        /* Cleanup */
        xmlSchemaIDCFreeBinding(parBind);
        return;
    }
    
internal_error:
    return;
}

int main(void) {
    xmlSchemaIDCBinding bind;
    
    /* Make bind.nbNodes symbolic */
    klee_make_symbolic(&bind.nbNodes, sizeof(bind.nbNodes), "bind.nbNodes");
    
    /* Assume reasonable bounds for nbNodes to avoid excessive allocation */
    klee_assume(bind.nbNodes >= 0);
    klee_assume(bind.nbNodes <= 100);
    
    /* Allocate nodeTable if nbNodes > 0 */
    if (bind.nbNodes > 0) {
        bind.nodeTable = (xmlSchemaPSVIIDCNodePtr*)malloc(
            bind.nbNodes * sizeof(xmlSchemaPSVIIDCNodePtr));
        
        /* Make the nodeTable contents symbolic */
        klee_make_symbolic(bind.nodeTable, 
                          bind.nbNodes * sizeof(xmlSchemaPSVIIDCNodePtr),
                          "bind.nodeTable");
    } else {
        bind.nodeTable = NULL;
    }
    
    bind.sizeNodes = bind.nbNodes;
    bind.dupls = 0;
    
    /* Call the entrypoint function */
    xmlSchemaParseRedefine(&bind);
    
    /* Cleanup */
    if (bind.nodeTable) {
        free(bind.nodeTable);
    }
    
    return 0;
}