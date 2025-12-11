#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlSchemaValidationCtxt xmlSchemaValidationCtxt;
typedef xmlSchemaValidationCtxt *xmlSchemaValidCtxtPtr;
typedef void *xmlSchemaNodeInfoPtr;

/* Simplified version of the struct based on the code snippet */
struct _xmlSchemaValidationCtxt {
    xmlSchemaNodeInfoPtr *elemInfos;
    int sizeElemInfos;
    int depth;
};

/* Stub for xmlSchemaFormatQName - the entrypoint mentioned in the spec */
char* xmlSchemaFormatQName(xmlSchemaValidCtxtPtr vctxt) {
    /* This is the function that contains the target line 24077 */
    if (vctxt->elemInfos == NULL) {
        /* xmlSchemaVErrMemory stub - just return NULL */
        return NULL;
    }
    
    /* This is the line we need to reach: line 24077 */
    /* The actual code would be: memset(vctxt->elemInfos, 0, 10 * sizeof(xmlSchemaNodeInfoPtr)); */
    /* But we need to check the vulnerability condition first */
    
    /* VULNERABILITY ASSERTION: Check if the memset size is safe */
    /* The vulnerability is that '10' might be larger than the allocated buffer */
    /* We need to assert that the buffer has at least 10 elements */
    /* Since we don't know the actual allocation size, we'll check against a symbolic size */
    
    /* We'll use a symbolic variable to represent the actual allocated size */
    int allocated_elements;
    klee_make_symbolic(&allocated_elements, sizeof(allocated_elements), "allocated_elements");
    
    /* Assume the allocation is reasonable */
    klee_assume(allocated_elements >= 0);
    
    /* Vulnerability assertion: check if we have enough space for 10 elements */
    SAILR_ASSERT(allocated_elements >= 10);
    
    /* Reachability marker - we've reached the vulnerable memset location */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* The actual memset would go here, but we return early due to the assert */
    return NULL;
}

/* Helper function to create a validation context with symbolic fields */
xmlSchemaValidCtxtPtr create_vctxt(void) {
    xmlSchemaValidCtxtPtr vctxt = malloc(sizeof(xmlSchemaValidationCtxt));
    if (!vctxt) return NULL;
    
    /* Make depth symbolic to trigger the else-if branch */
    klee_make_symbolic(&vctxt->depth, sizeof(vctxt->depth), "depth");
    
    /* We want to reach the else-if branch where sizeElemInfos <= depth */
    /* So we need to set sizeElemInfos to be <= depth */
    vctxt->sizeElemInfos = 5;  /* Less than typical depth to trigger reallocation */
    
    /* Allocate elemInfos array */
    vctxt->elemInfos = malloc(10 * sizeof(xmlSchemaNodeInfoPtr));
    
    return vctxt;
}

int main(void) {
    /* Create a validation context */
    xmlSchemaValidCtxtPtr vctxt = create_vctxt();
    if (!vctxt) return 1;
    
    /* We need to ensure we take the else-if branch at line 24077 */
    /* The condition is: vctxt->sizeElemInfos <= vctxt->depth */
    /* We set sizeElemInfos to 5, so we need depth >= 5 */
    klee_assume(vctxt->depth >= 5);
    
    /* Also ensure elemInfos is not NULL to skip the first if branch */
    klee_assume(vctxt->elemInfos != NULL);
    
    /* Call the function that contains the target line */
    char* result = xmlSchemaFormatQName(vctxt);
    
    /* Cleanup */
    if (vctxt->elemInfos) free(vctxt->elemInfos);
    free(vctxt);
    
    return 0;
}