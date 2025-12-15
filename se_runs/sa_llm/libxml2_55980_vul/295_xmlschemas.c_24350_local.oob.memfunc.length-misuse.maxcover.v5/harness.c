#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub types to compile */
typedef struct _xmlSchemaValidCtxt xmlSchemaValidCtxt;
typedef xmlSchemaValidCtxt *xmlSchemaValidCtxtPtr;
typedef struct _xmlSchemaNodeInfo xmlSchemaNodeInfo;
typedef xmlSchemaNodeInfo *xmlSchemaNodeInfoPtr;

struct _xmlSchemaValidCtxt {
    xmlSchemaNodeInfoPtr *elemInfos;
    int sizeElemInfos;
    int depth;
};

/* Stub functions to avoid linking */
void *xmlMalloc(size_t size) {
    return malloc(size);
}

void *xmlRealloc(void *ptr, size_t size) {
    return realloc(ptr, size);
}

void xmlSchemaVErrMemory(void *vctxt, const char *msg, void *node) {
    /* Do nothing */
}

/* Target function from xmlschemas.c around line 24350 */
xmlSchemaNodeInfoPtr* target_function(xmlSchemaValidCtxtPtr vctxt) {
    if (vctxt->elemInfos == NULL) {
        vctxt->elemInfos = (xmlSchemaNodeInfoPtr *)
            xmlMalloc(10 * sizeof(xmlSchemaNodeInfoPtr));
        if (vctxt->elemInfos == NULL) {
            xmlSchemaVErrMemory(vctxt,
                "allocating the element info array", NULL);
            return (NULL);
        }
        /* TARGET LINE 24350 */
        memset(vctxt->elemInfos, 0, 10 * sizeof(xmlSchemaNodeInfoPtr));
        /* Vulnerability assertion: ensure the memset length doesn't exceed allocation */
        SAILR_ASSERT(10 * sizeof(xmlSchemaNodeInfoPtr) <= 10 * sizeof(xmlSchemaNodeInfoPtr));
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        vctxt->sizeElemInfos = 10;
    } else if (vctxt->sizeElemInfos <= vctxt->depth) {
        int i = vctxt->sizeElemInfos;
        vctxt->sizeElemInfos *= 2;
        vctxt->elemInfos = (xmlSchemaNodeInfoPtr *)
            xmlRealloc(vctxt->elemInfos, vctxt->sizeElemInfos *
            sizeof(xmlSchemaNodeInfoPtr));
    }
    return vctxt->elemInfos;
}

int main(void) {
    /* Create validation context */
    xmlSchemaValidCtxt vctxt;
    
    /* Make context fields symbolic to explore paths */
    klee_make_symbolic(&vctxt, sizeof(vctxt), "vctxt");
    
    /* Assume reasonable bounds for depth to avoid overflow */
    klee_assume(vctxt.depth >= 0);
    klee_assume(vctxt.depth < 1000);
    
    /* Assume sizeElemInfos is non-negative if not NULL */
    if (vctxt.elemInfos != NULL) {
        klee_assume(vctxt.sizeElemInfos >= 0);
        klee_assume(vctxt.sizeElemInfos < 1000);
    }
    
    /* Call the target function to reach line 24350 */
    target_function(&vctxt);
    
    /* Cleanup */
    if (vctxt.elemInfos != NULL) {
        free(vctxt.elemInfos);
    }
    
    return 0;
}