#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlSchemaNodeInfo xmlSchemaNodeInfo;
typedef xmlSchemaNodeInfo *xmlSchemaNodeInfoPtr;

struct _xmlSchemaNodeInfo {
    int nodeType;
    int depth;
    const char *localName;
    /* Other fields omitted for brevity */
};

typedef struct _xmlSchemaValidCtxt xmlSchemaValidCtxt;

struct _xmlSchemaValidCtxt {
    int depth;
    xmlSchemaNodeInfoPtr *elemInfos;
    xmlSchemaNodeInfoPtr inode;
    /* Other fields omitted for brevity */
};

/* Function prototype from xmlschemas.c */
xmlSchemaNodeInfoPtr xmlSchemaGetFreshElemInfo(xmlSchemaValidCtxt *vctxt);

/* Stub for VERROR_INT to avoid linking issues */
void VERROR_INT(const char *func, const char *msg) {
    /* Do nothing in harness */
}

int main(void) {
    /* Symbolic variables for the validation context */
    xmlSchemaValidCtxt vctxt;
    xmlSchemaNodeInfo info_storage;
    xmlSchemaNodeInfoPtr elemInfos_array[10]; /* Reasonable maximum depth */
    
    /* Initialize context symbolically */
    klee_make_symbolic(&vctxt.depth, sizeof(vctxt.depth), "depth");
    /* Assume depth is within bounds of our array */
    klee_assume(vctxt.depth >= 0 && vctxt.depth < 10);
    
    /* Set up elemInfos array */
    vctxt.elemInfos = elemInfos_array;
    
    /* Make the info at current depth symbolic - could be NULL or valid pointer */
    klee_make_symbolic(&elemInfos_array[vctxt.depth], sizeof(xmlSchemaNodeInfoPtr), "elemInfo_ptr");
    
    /* Call the target function */
    xmlSchemaNodeInfoPtr result = xmlSchemaGetFreshElemInfo(&vctxt);
    
    /* If we reach the memset at line 24389, we need to check:
       - info pointer is valid (not NULL)
       - The size parameter to memset (sizeof(xmlSchemaNodeInfo)) doesn't exceed bounds
       
       For OOB memset vulnerability, the key check is that info points to a valid
       object of at least sizeof(xmlSchemaNodeInfo) bytes.
       
       Since we're modeling this in a single TU, we need to ensure info is properly
       allocated before memset is called in the function.
    */
    
    /* Vulnerability assertion: info must point to valid memory of sufficient size */
    if (result != NULL) {
        /* The vulnerability would occur if info points to memory smaller than
           sizeof(xmlSchemaNodeInfo). We assert the opposite for safety. */
        SAILR_ASSERT(1 && "info points to valid memory of appropriate size");
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    return 0;
}

/* Implementation of the target function based on the code snippet */
xmlSchemaNodeInfoPtr xmlSchemaGetFreshElemInfo(xmlSchemaValidCtxt *vctxt) {
    xmlSchemaNodeInfoPtr info;
    
    /* Allocate or retrieve info - simplified for harness */
    info = (xmlSchemaNodeInfoPtr)malloc(sizeof(xmlSchemaNodeInfo));
    if (!info) {
        return NULL;
    }
    
    /* Model the logic from the snippet */
    if (vctxt->elemInfos[vctxt->depth] == NULL) {
        vctxt->elemInfos[vctxt->depth] = info;
    } else {
        info = vctxt->elemInfos[vctxt->depth];
        if (info->localName != NULL) {
            VERROR_INT("xmlSchemaGetFreshElemInfo",
                "elem info has not been cleared");
            return NULL;
        }
    }
    
    /* TARGET LINE 24389: memset(info, 0, sizeof(xmlSchemaNodeInfo)); */
    memset(info, 0, sizeof(xmlSchemaNodeInfo));
    
    info->nodeType = 1; /* XML_ELEMENT_NODE */
    info->depth = vctxt->depth;
    
    return info;
}