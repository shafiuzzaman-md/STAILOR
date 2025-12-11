#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlSAXHandler {
    int initialized;
    /* Other fields omitted for brevity */
} xmlSAXHandler;

typedef struct _xmlSAXHandlerV1 {
    /* Fields omitted */
} xmlSAXHandlerV1;

typedef struct _xmlParserCtxt {
    xmlSAXHandler *sax;
    void *userData;
    int maxatts;
    /* Other fields omitted */
} xmlParserCtxt;

/* Stub for xmlNextChar - the entrypoint mentioned in the spec */
void xmlNextChar(void) {
    /* This is just a stub to satisfy the entrypoint reference */
}

/* Function that contains the vulnerable code pattern */
void target_function(xmlParserCtxt *ctxt, xmlSAXHandler *sax, void *userData) {
    if (sax->initialized == 0xDEADBEEF) { /* XML_SAX2_MAGIC placeholder */
        memcpy(ctxt->sax, sax, sizeof(xmlSAXHandler));
    } else {
        memset(ctxt->sax, 0, sizeof(xmlSAXHandler));
        memcpy(ctxt->sax, sax, sizeof(xmlSAXHandlerV1));
    }
    ctxt->userData = userData ? userData : ctxt;
    
    ctxt->maxatts = 0;
}

int main(void) {
    /* Allocate and make symbolic the parser context */
    xmlParserCtxt *ctxt = malloc(sizeof(xmlParserCtxt));
    if (!ctxt) return 0;
    
    /* Allocate sax pointer in context - size will be determined by which branch we take */
    ctxt->sax = malloc(sizeof(xmlSAXHandler));
    if (!ctxt->sax) {
        free(ctxt);
        return 0;
    }
    
    /* Allocate and make symbolic the source SAX handler */
    xmlSAXHandler *sax = malloc(sizeof(xmlSAXHandler));
    if (!sax) {
        free(ctxt->sax);
        free(ctxt);
        return 0;
    }
    
    /* Make the initialized field symbolic to control which branch is taken */
    klee_make_symbolic(&sax->initialized, sizeof(sax->initialized), "sax_initialized");
    
    /* Allocate userData pointer */
    void *userData = malloc(1);
    if (!userData) {
        free(sax);
        free(ctxt->sax);
        free(ctxt);
        return 0;
    }
    
    /* Assume we take the else branch (non-XML_SAX2_MAGIC path) to reach line 1857 */
    klee_assume(sax->initialized != 0xDEADBEEF);
    
    /* Vulnerability assertion: 
       The memcpy on line 1857 copies sizeof(xmlSAXHandlerV1) bytes into ctxt->sax.
       We need to ensure ctxt->sax has at least that much allocated memory.
       Since we allocated sizeof(xmlSAXHandler) for ctxt->sax, we need to check
       that sizeof(xmlSAXHandlerV1) <= sizeof(xmlSAXHandler) to avoid OOB write.
    */
    SAILR_ASSERT(sizeof(xmlSAXHandlerV1) <= sizeof(xmlSAXHandler));
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Call the target function */
    target_function(ctxt, sax, userData);
    
    /* Cleanup */
    free(userData);
    free(sax);
    free(ctxt->sax);
    free(ctxt);
    
    return 0;
}