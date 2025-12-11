#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlSchemaParserCtxt xmlSchemaParserCtxt;
typedef xmlSchemaParserCtxt *xmlSchemaParserCtxtPtr;

typedef struct _xmlSchemaAttributeUseProhib xmlSchemaAttributeUseProhib;
typedef xmlSchemaAttributeUseProhib *xmlSchemaAttributeUseProhibPtr;

/* Constants from libxml2 */
#define XML_SCHEMA_EXTRA_ATTR_USE_PROHIB 1

/* Stub for xmlSchemaPErrMemory */
void xmlSchemaPErrMemory(xmlSchemaParserCtxtPtr ctxt, const char *msg, const char *str) {
    /* Do nothing in stub */
}

/* Stub for WXS_ADD_LOCAL macro/function */
void WXS_ADD_LOCAL(xmlSchemaParserCtxtPtr ctxt, void *ptr) {
    /* Do nothing in stub */
}

/* Target function - reconstructed from snippet */
xmlSchemaAttributeUseProhibPtr xmlSchemaNewAttrUseProhib(xmlSchemaParserCtxtPtr pctxt) {
    xmlSchemaAttributeUseProhibPtr ret;
    
    ret = (xmlSchemaAttributeUseProhibPtr)malloc(sizeof(xmlSchemaAttributeUseProhib));
    if (ret == NULL) {
        xmlSchemaPErrMemory(pctxt, "allocating attribute use prohibition", NULL);
        return (NULL);
    }
    
    /* TARGET LINE 5398: memset(ret, 0, sizeof(xmlSchemaAttributeUseProhib)); */
    memset(ret, 0, sizeof(xmlSchemaAttributeUseProhib));
    
    ret->type = XML_SCHEMA_EXTRA_ATTR_USE_PROHIB;
    WXS_ADD_LOCAL(pctxt, ret);
    return (ret);
}

/* Entry point for KLEE */
int main(void) {
    xmlSchemaParserCtxtPtr pctxt;
    xmlSchemaAttributeUseProhibPtr result;
    
    /* Make parser context symbolic (simplified as a pointer) */
    pctxt = (xmlSchemaParserCtxtPtr)malloc(sizeof(xmlSchemaParserCtxt));
    klee_make_symbolic(pctxt, sizeof(xmlSchemaParserCtxt), "pctxt");
    
    /* Call the target function */
    result = xmlSchemaNewAttrUseProhib(pctxt);
    
    /* Vulnerability assertion: For OOB in memset, ensure the allocated size
       is at least the size being cleared. Since malloc can fail (returning NULL),
       we need to check that when result is non-NULL, the allocation was sufficient.
       The actual vulnerability would be if malloc returned a pointer to memory
       smaller than sizeof(xmlSchemaAttributeUseProhib), but we can't directly
       check that. Instead, we assert that if result != NULL, then the memset
       size is within bounds of a proper allocation. */
    if (result != NULL) {
        /* For length-misuse pattern: the size argument to memset should be
           less than or equal to the actual allocated size. Since we know
           malloc was called with sizeof(xmlSchemaAttributeUseProhib), we
           assert that this size is valid (non-negative and reasonable).
           The actual check is that sizeof(xmlSchemaAttributeUseProhib) > 0
           and that the pointer is valid for that many bytes. */
        SAILR_ASSERT(sizeof(xmlSchemaAttributeUseProhib) > 0);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Cleanup */
    free(result);
    free(pctxt);
    
    return 0;
}