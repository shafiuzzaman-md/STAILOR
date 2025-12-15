#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed to compile */
typedef struct _xmlSchemaIDC xmlSchemaIDC;
typedef struct _xmlSchemaValidationCtxt xmlSchemaValidationCtxt;
typedef struct _xmlSchemaPSVIIDCNode xmlSchemaPSVIIDCNode;

/* Constants from libxml2 */
#define XML_SCHEMA_TYPE_IDC_KEYREF 3

/* Stub structures */
struct _xmlSchemaIDC {
    int type;
};

struct _xmlSchemaValidationCtxt {
    void *dummy;
};

struct _xmlSchemaPSVIIDCNode {
    char data[256]; /* Arbitrary size for modeling */
};

/* Stub functions */
void xmlSchemaVErrMemory(void *a, const char *b, void *c) {}
void xmlFree(void *ptr) {}
int xmlSchemaIDCStoreNodeTableItem(xmlSchemaValidationCtxt *vctxt, xmlSchemaPSVIIDCNode *ntItem) { return 0; }

/* Target function from xmlschemas.c line 23245 context */
int target_function(xmlSchemaValidationCtxt *vctxt, xmlSchemaIDC *idc, void **keySeq) {
    xmlSchemaPSVIIDCNode *ntItem;
    
    /* Simulate allocation - make symbolic to explore both paths */
    ntItem = (xmlSchemaPSVIIDCNode *)malloc(sizeof(xmlSchemaPSVIIDCNode));
    if (ntItem == NULL) {
        xmlSchemaVErrMemory(NULL, "allocating an IDC node-table item", NULL);
        xmlFree(*keySeq);
        *keySeq = NULL;
        return -1;
    }
    
    /* VULNERABLE LINE: memset(ntItem, 0, sizeof(xmlSchemaPSVIIDCNode)); */
    /* Vulnerability assertion: ensure ntItem points to valid memory of sufficient size */
    SAILR_ASSERT(ntItem != NULL && sizeof(xmlSchemaPSVIIDCNode) > 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(ntItem, 0, sizeof(xmlSchemaPSVIIDCNode));
    
    if (idc->type != XML_SCHEMA_TYPE_IDC_KEYREF) {
        if (xmlSchemaIDCStoreNodeTableItem(vctxt, ntItem) == -1) {
            xmlFree(ntItem);
            xmlFree(*keySeq);
            return -1;
        }
    }
    
    free(ntItem);
    return 0;
}

int main(void) {
    /* Symbolic inputs to drive execution */
    xmlSchemaValidationCtxt vctxt;
    xmlSchemaIDC idc;
    void *keySeq;
    
    /* Make idc.type symbolic to explore both branches */
    klee_make_symbolic(&idc.type, sizeof(idc.type), "idc_type");
    klee_assume(idc.type >= 0 && idc.type <= 10); /* Reasonable range */
    
    /* Make keySeq symbolic pointer */
    klee_make_symbolic(&keySeq, sizeof(keySeq), "keySeq");
    
    /* Call target function */
    int result = target_function(&vctxt, &idc, &keySeq);
    
    return result;
}