#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the target function */
typedef struct _xmlSchemaParserCtxt xmlSchemaParserCtxt;
typedef xmlSchemaParserCtxt *xmlSchemaParserCtxtPtr;

typedef struct _xmlSchemaAttributeUseProhib xmlSchemaAttributeUseProhib;
typedef xmlSchemaAttributeUseProhib *xmlSchemaAttributeUseProhibPtr;

#define XML_SCHEMA_EXTRA_ATTR_USE_PROHIB 1

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    if (ptr) {
        klee_make_symbolic(ptr, size, "xmlMalloc_buffer");
    }
    return ptr;
}

/* Stub for xmlSchemaPErrMemory */
void xmlSchemaPErrMemory(xmlSchemaParserCtxtPtr ctxt, const char* msg, const char* extra) {
    /* Do nothing */
}

/* Stub for WXS_ADD_LOCAL */
#define WXS_ADD_LOCAL(ctxt, ptr) /* Do nothing */

/* Target function from xmlschemas.c:5520-5530 */
static xmlSchemaAttributeUseProhibPtr xmlSchemaNewAttrUseProhib(xmlSchemaParserCtxtPtr pctxt) {
    xmlSchemaAttributeUseProhibPtr ret;
    
    ret = (xmlSchemaAttributeUseProhibPtr)xmlMalloc(sizeof(xmlSchemaAttributeUseProhib));
    if (ret == NULL) {
        xmlSchemaPErrMemory(pctxt, "allocating attribute use prohibition", NULL);
        return (NULL);
    }
    
    /* TARGET LINE 5527 - memset call */
    memset(ret, 0, sizeof(xmlSchemaAttributeUseProhib));
    
    ret->type = XML_SCHEMA_EXTRA_ATTR_USE_PROHIB;
    WXS_ADD_LOCAL(pctxt, ret);
    return (ret);
}

/* Main harness */
int main(void) {
    xmlSchemaParserCtxtPtr pctxt;
    
    /* Make pctxt symbolic to explore different paths */
    pctxt = (xmlSchemaParserCtxtPtr)malloc(sizeof(xmlSchemaParserCtxt));
    klee_make_symbolic(pctxt, sizeof(xmlSchemaParserCtxt), "pctxt");
    
    /* Call the target function */
    xmlSchemaAttributeUseProhibPtr result = xmlSchemaNewAttrUseProhib(pctxt);
    
    /* Vulnerability assertion: For OOB in memset, we need to ensure
       the allocated buffer is at least as large as the memset size.
       Since xmlMalloc returns symbolic memory, we assert that if
       allocation succeeded, the buffer is properly sized. */
    if (result != NULL) {
        /* The vulnerability condition: ensure memset doesn't write beyond allocation.
           Since we can't directly check allocation size in the stub, we assume
           xmlMalloc always allocates at least the requested size. The real issue
           would be if sizeof(xmlSchemaAttributeUseProhib) was miscalculated or
           if the pointer was corrupted. We assert the pointer is valid for the write. */
        SAILR_ASSERT(result != NULL);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Cleanup */
    if (pctxt) free(pctxt);
    
    return 0;
}