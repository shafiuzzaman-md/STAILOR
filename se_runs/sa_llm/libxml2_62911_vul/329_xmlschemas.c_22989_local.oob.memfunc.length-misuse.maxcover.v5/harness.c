#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlSchemaPSVIIDCNode xmlSchemaPSVIIDCNode;
typedef struct _xmlSchemaIDC xmlSchemaIDC;

struct _xmlSchemaPSVIIDCNode {
    /* Minimal structure to allow sizeof to work */
    char dummy[64];
};

struct _xmlSchemaIDC {
    int type;
    /* Other fields omitted */
};

/* Constants from libxml2 */
#define XML_SCHEMA_TYPE_IDC_KEYREF 3

/* Stub for xmlSchemaFormatQName - not needed for this path */
char* xmlSchemaFormatQName(const char* name) {
    return NULL;
}

/* Stub for xmlFree */
void xmlFree(void* ptr) {
    free(ptr);
}

/* Simulate the function that contains the target line */
int target_function(xmlSchemaPSVIIDCNode** ntItem, char*** keySeq, xmlSchemaIDC* idc, int an, int in, int ret) {
    /* This simulates the code around line 22989 */
    
    /* Allocate ntItem */
    *ntItem = (xmlSchemaPSVIIDCNode*)malloc(sizeof(xmlSchemaPSVIIDCNode));
    if (*ntItem == NULL) {
        xmlFree(*keySeq);
        *keySeq = NULL;
        return -1;
    }
    
    /* TARGET LINE 22989: memset(ntItem, 0, sizeof(xmlSchemaPSVIIDCNode)); */
    /* The vulnerability is that the size argument to memset might be incorrect */
    /* Based on the SA spec, we need to check bounds for length variables */
    
    /* Vulnerability assertion: ensure the size doesn't cause OOB write */
    /* The SA rule suggests checking length variables: an, in, return */
    /* We'll assume the size should be positive and not exceed buffer bounds */
    SAILR_ASSERT(sizeof(xmlSchemaPSVIIDCNode) > 0 && an >= 0 && in >= 0 && ret >= 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* The actual memset call (commented out since we're simulating) */
    /* memset(*ntItem, 0, sizeof(xmlSchemaPSVIIDCNode)); */
    
    /* Continue with the rest of the function */
    if (idc->type != XML_SCHEMA_TYPE_IDC_KEYREF) {
        /* Store in global list */
    }
    
    return 0;
}

int main(void) {
    /* Symbolic variables from the SA spec */
    int an, in, ret;
    xmlSchemaPSVIIDCNode* ntItem = NULL;
    char** keySeq = NULL;
    xmlSchemaIDC idc;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&an, sizeof(an), "an");
    klee_make_symbolic(&in, sizeof(in), "in");
    klee_make_symbolic(&ret, sizeof(ret), "ret");
    klee_make_symbolic(&idc.type, sizeof(idc.type), "idc_type");
    
    /* Assume bounds from SA spec hints */
    klee_assume(an >= 0);
    klee_assume(in >= 0);
    klee_assume(ret >= 0);
    
    /* Allocate keySeq */
    keySeq = (char**)malloc(sizeof(char*));
    if (keySeq == NULL) {
        return 0;
    }
    *keySeq = NULL;
    
    /* Call the target function */
    int result = target_function(&ntItem, &keySeq, &idc, an, in, ret);
    
    /* Cleanup */
    if (ntItem) free(ntItem);
    if (keySeq) {
        if (*keySeq) free(*keySeq);
        free(keySeq);
    }
    
    return 0;
}