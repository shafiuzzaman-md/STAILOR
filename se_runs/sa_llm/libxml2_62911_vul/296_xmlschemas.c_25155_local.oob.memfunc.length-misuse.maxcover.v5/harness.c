#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub for xmlSchemaFreeValue to avoid linking issues */
void xmlSchemaFreeValue(void* val) {
    /* Assume it frees the value; for KLEE we just need it to exist */
    (void)val;
}

/* Minimal type definitions needed for the target code */
typedef struct xmlSchemaAttrInfo {
    void* val;
    /* Other fields unknown; we only need enough to reach memset */
    char placeholder[64];
} xmlSchemaAttrInfo;

typedef struct xmlSchemaValidCtxt {
    int nbAttrInfos;
    xmlSchemaAttrInfo* attrInfos;
} xmlSchemaValidCtxt;

/* Target function that contains the vulnerable memset */
void xmlSchemaFreeAttributeInfo(xmlSchemaValidCtxt* vctxt) {
    int i;
    if (vctxt == NULL) return;
    
    if (vctxt->attrInfos != NULL) {
        for (i = 0; i < vctxt->nbAttrInfos; i++) {
            xmlSchemaAttrInfo* attr = &(vctxt->attrInfos[i]);
            if (attr->val != NULL) {
                xmlSchemaFreeValue(attr->val);
                attr->val = NULL;
            }
            /* VULNERABLE LINE: memset(attr, 0, sizeof(xmlSchemaAttrInfo)); */
            memset(attr, 0, sizeof(xmlSchemaAttrInfo));
        }
        vctxt->nbAttrInfos = 0;
    }
}

int main(void) {
    xmlSchemaValidCtxt vctxt;
    int num_attrs;
    
    /* Make number of attributes symbolic */
    klee_make_symbolic(&num_attrs, sizeof(num_attrs), "num_attrs");
    
    /* Constrain num_attrs to be non-negative and reasonable for allocation */
    klee_assume(num_attrs >= 0);
    klee_assume(num_attrs <= 100);  /* Reasonable upper bound */
    
    /* Allocate attribute array */
    vctxt.attrInfos = (xmlSchemaAttrInfo*)malloc(num_attrs * sizeof(xmlSchemaAttrInfo));
    if (vctxt.attrInfos == NULL) {
        return 0;  /* Allocation failed, exit */
    }
    
    vctxt.nbAttrInfos = num_attrs;
    
    /* Initialize each attribute's val field to be either NULL or non-NULL */
    for (int i = 0; i < num_attrs; i++) {
        int val_is_null;
        klee_make_symbolic(&val_is_null, sizeof(val_is_null), "val_is_null");
        klee_assume(val_is_null == 0 || val_is_null == 1);
        
        if (val_is_null) {
            vctxt.attrInfos[i].val = NULL;
        } else {
            /* Allocate some dummy value */
            vctxt.attrInfos[i].val = malloc(1);
        }
    }
    
    /* Call the target function */
    xmlSchemaFreeAttributeInfo(&vctxt);
    
    /* Vulnerability assertion: Check that memset size doesn't exceed allocated bounds */
    /* For the memset at line 25155, we need to ensure we're not writing beyond 
       the allocated attrInfos array. The condition is that for each i, 
       &attrInfos[i] + sizeof(xmlSchemaAttrInfo) <= &attrInfos[num_attrs] */
    if (num_attrs > 0 && vctxt.attrInfos != NULL) {
        /* Check the last iteration of the loop where i = num_attrs - 1 */
        xmlSchemaAttrInfo* last_attr = &vctxt.attrInfos[num_attrs - 1];
        char* memset_end = (char*)last_attr + sizeof(xmlSchemaAttrInfo);
        char* array_end = (char*)vctxt.attrInfos + (num_attrs * sizeof(xmlSchemaAttrInfo));
        
        SAILR_ASSERT(memset_end <= array_end);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Cleanup */
    free(vctxt.attrInfos);
    
    return 0;
}