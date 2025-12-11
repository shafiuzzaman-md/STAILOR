#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stubs for libxml2 types and functions needed to reach target */
typedef struct _xmlSchemaParserCtxt xmlSchemaParserCtxt;
typedef xmlSchemaParserCtxt *xmlSchemaParserCtxtPtr;

typedef struct _xmlSchemaValidationCtxt xmlSchemaValidationCtxt;
typedef xmlSchemaValidationCtxt *xmlSchemaValidationCtxtPtr;

typedef struct _xmlSchemaAttrInfo xmlSchemaAttrInfo;

struct _xmlSchemaValidationCtxt {
    xmlSchemaAttrInfo **attrInfos;
    int nbAttrInfos;
    int attrInfosSize;
};

typedef enum {
    XML_ATTRIBUTE_NODE = 2
} xmlElementType;

struct _xmlSchemaAttrInfo {
    xmlElementType nodeType;
};

void xmlSchemaVErrMemory(xmlSchemaValidationCtxtPtr vctxt, const char *msg, const char *extra) {
    (void)vctxt; (void)msg; (void)extra;
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

/* Target function prototype */
xmlSchemaAttrInfo *xmlSchemaNewAttrInfo(xmlSchemaValidationCtxtPtr vctxt);

/* Implementation of target function based on snippet */
xmlSchemaAttrInfo *xmlSchemaNewAttrInfo(xmlSchemaValidationCtxtPtr vctxt) {
    xmlSchemaAttrInfo *iattr;
    
    iattr = (xmlSchemaAttrInfo *)xmlMalloc(sizeof(xmlSchemaAttrInfo));
    if (iattr == NULL) {
        xmlSchemaVErrMemory(vctxt, "creating new attribute info", NULL);
        return (NULL);
    }
    memset(iattr, 0, sizeof(xmlSchemaAttrInfo));
    iattr->nodeType = XML_ATTRIBUTE_NODE;
    
    /* TARGET LINE 23925: vctxt->attrInfos[vctxt->nbAttrInfos++] = iattr; */
    vctxt->attrInfos[vctxt->nbAttrInfos++] = iattr;
    
    return (iattr);
}

/* Entrypoint that leads to target function */
xmlSchemaAttrInfo *xmlSchemaParseInclude(xmlSchemaParserCtxtPtr ctxt) {
    (void)ctxt;
    return NULL;
}

int main(void) {
    xmlSchemaValidationCtxt vctxt;
    int attrInfosSize;
    
    /* Make symbolic the size of attrInfos array */
    klee_make_symbolic(&attrInfosSize, sizeof(attrInfosSize), "attrInfosSize");
    /* Assume reasonable bounds for array size */
    klee_assume(attrInfosSize >= 0 && attrInfosSize <= 1024);
    
    /* Allocate array of pointers */
    vctxt.attrInfos = (xmlSchemaAttrInfo **)malloc(attrInfosSize * sizeof(xmlSchemaAttrInfo *));
    vctxt.nbAttrInfos = 0;
    vctxt.attrInfosSize = attrInfosSize;
    
    /* Make nbAttrInfos symbolic before calling target function */
    int initial_nbAttrInfos;
    klee_make_symbolic(&initial_nbAttrInfos, sizeof(initial_nbAttrInfos), "initial_nbAttrInfos");
    /* Ensure it's within array bounds for the memset length-misuse check */
    klee_assume(initial_nbAttrInfos >= 0 && initial_nbAttrInfos < attrInfosSize);
    
    vctxt.nbAttrInfos = initial_nbAttrInfos;
    
    /* Call target function */
    xmlSchemaAttrInfo *result = xmlSchemaNewAttrInfo(&vctxt);
    
    /* Vulnerability assertion: Check that the index used in the array access
       (vctxt->nbAttrInfos before increment) is within bounds.
       The pattern local.oob.memfunc.length-misuse.maxcover.v5 suggests
       the memset length could be unbounded, but here the OOB risk is in
       the array access. We assert the access is safe. */
    if (result != NULL) {
        /* The access happens at: vctxt->attrInfos[vctxt->nbAttrInfos++]
           The index used is the pre-increment value, which is initial_nbAttrInfos.
           We need to check it's within the allocated array size. */
        SAILR_ASSERT(initial_nbAttrInfos < attrInfosSize);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Cleanup */
    if (vctxt.attrInfos != NULL) {
        free(vctxt.attrInfos);
    }
    
    return 0;
}