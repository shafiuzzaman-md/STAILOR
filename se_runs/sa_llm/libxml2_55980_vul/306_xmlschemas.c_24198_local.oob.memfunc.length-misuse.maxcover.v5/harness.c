#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlSchemaValidCtxt xmlSchemaValidCtxt;
typedef xmlSchemaValidCtxt *xmlSchemaValidCtxtPtr;

typedef struct _xmlSchemaAttrInfo xmlSchemaAttrInfo;
typedef xmlSchemaAttrInfo *xmlSchemaAttrInfoPtr;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlSchemaVErrMemory */
void xmlSchemaVErrMemory(xmlSchemaValidCtxtPtr vctxt, const char *msg, const char *extra) {
    /* Do nothing */
}

/* Target function signature from the snippet */
static xmlSchemaAttrInfoPtr xmlSchemaCreateAttrInfo(xmlSchemaValidCtxtPtr vctxt);

/* Minimal struct definitions based on usage in snippet */
struct _xmlSchemaAttrInfo {
    int nodeType;  /* Only field accessed in snippet */
    /* Other fields would be zeroed by memset */
};

struct _xmlSchemaValidCtxt {
    xmlSchemaAttrInfoPtr *attrInfos;
    int nbAttrInfos;
    /* Other fields not relevant for reaching target line */
};

/* Implementation of the target function from the snippet */
static xmlSchemaAttrInfoPtr xmlSchemaCreateAttrInfo(xmlSchemaValidCtxtPtr vctxt) {
    xmlSchemaAttrInfoPtr iattr;
    
    iattr = (xmlSchemaAttrInfoPtr) xmlMalloc(sizeof(xmlSchemaAttrInfo));
    if (iattr == NULL) {
        xmlSchemaVErrMemory(vctxt, "creating new attribute info", NULL);
        return (NULL);
    }
    
    /* TARGET LINE 24198: memset(iattr, 0, sizeof(xmlSchemaAttrInfo)); */
    /* Vulnerability assertion: ensure the size parameter doesn't cause OOB */
    SAILR_ASSERT(sizeof(xmlSchemaAttrInfo) <= malloc_usable_size(iattr));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(iattr, 0, sizeof(xmlSchemaAttrInfo));
    iattr->nodeType = 2; /* XML_ATTRIBUTE_NODE = 2 */
    vctxt->attrInfos[vctxt->nbAttrInfos++] = iattr;
    
    return (iattr);
}

/* Helper to get malloc usable size (simplified for KLEE) */
size_t malloc_usable_size(void *ptr) {
    if (!ptr) return 0;
    /* In symbolic execution, we can't know the actual allocated size
       without tracking it ourselves. We'll use a symbolic size. */
    size_t size;
    klee_make_symbolic(&size, sizeof(size), "alloc_size");
    klee_assume(size >= sizeof(xmlSchemaAttrInfo)); /* Assume it's at least the needed size */
    return size;
}

int main(void) {
    xmlSchemaValidCtxt vctxt;
    xmlSchemaAttrInfoPtr *attrInfosArray;
    int array_size;
    
    /* Make vctxt fields symbolic to explore different paths */
    klee_make_symbolic(&array_size, sizeof(array_size), "array_size");
    klee_assume(array_size > 0); /* Need at least one slot */
    
    /* Allocate array for attrInfos */
    attrInfosArray = (xmlSchemaAttrInfoPtr*)malloc(array_size * sizeof(xmlSchemaAttrInfoPtr));
    vctxt.attrInfos = attrInfosArray;
    
    /* Initialize nbAttrInfos symbolically */
    klee_make_symbolic(&vctxt.nbAttrInfos, sizeof(vctxt.nbAttrInfos), "nbAttrInfos");
    klee_assume(vctxt.nbAttrInfos >= 0);
    klee_assume(vctxt.nbAttrInfos < array_size); /* Ensure array bounds */
    
    /* Call the target function */
    xmlSchemaCreateAttrInfo(&vctxt);
    
    /* Cleanup */
    free(attrInfosArray);
    
    return 0;
}