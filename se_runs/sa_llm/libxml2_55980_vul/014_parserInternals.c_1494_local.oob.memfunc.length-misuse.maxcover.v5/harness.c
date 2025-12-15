#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlSAXHandlerV1 {
    int initialized;
    /* Other fields omitted for brevity */
} xmlSAXHandlerV1;

typedef struct _xmlSAXHandler {
    int initialized;
    /* Other fields omitted for brevity */
} xmlSAXHandler;

typedef struct _xmlParserCtxt {
    xmlSAXHandler *sax;
    void *userData;
    int maxatts;
    void *atts;
    /* Other fields omitted for brevity */
} xmlParserCtxt;

/* Function prototype for the target function (simplified) */
void xmlInitParserCtxt(xmlParserCtxt* ctxt, xmlSAXHandler* sax, void* userData);

int main(void) {
    /* Allocate and initialize parser context */
    xmlParserCtxt* ctxt = (xmlParserCtxt*)malloc(sizeof(xmlParserCtxt));
    if (!ctxt) return 0;
    
    /* Allocate sax field in context */
    ctxt->sax = (xmlSAXHandler*)malloc(sizeof(xmlSAXHandler));
    if (!ctxt->sax) {
        free(ctxt);
        return 0;
    }
    
    /* Make sax pointer symbolic to explore both branches */
    xmlSAXHandler* sax = (xmlSAXHandler*)malloc(sizeof(xmlSAXHandler));
    if (!sax) {
        free(ctxt->sax);
        free(ctxt);
        return 0;
    }
    
    /* Symbolic variable for sax->initialized */
    klee_make_symbolic(&sax->initialized, sizeof(sax->initialized), "sax_initialized");
    
    /* Symbolic userData pointer (can be NULL or non-NULL) */
    void* userData;
    klee_make_symbolic(&userData, sizeof(userData), "userData");
    
    /* Assume sax is not NULL to take the else branch */
    klee_assume(sax != NULL);
    
    /* Assume sax->initialized != XML_SAX2_MAGIC to reach target line 1494 */
    /* XML_SAX2_MAGIC is typically 0xDEEDBEAF or similar, use a concrete value */
    #define XML_SAX2_MAGIC 0xDEEDBEAF
    klee_assume(sax->initialized != XML_SAX2_MAGIC);
    
    /* Call the target function */
    xmlInitParserCtxt(ctxt, sax, userData);
    
    /* Vulnerability assertion: 
       The memset at line 1494 uses sizeof(xmlSAXHandler) which should be 
       at least as large as sizeof(xmlSAXHandlerV1) to avoid OOB in memcpy.
       Since we're copying sax (which is xmlSAXHandlerV1*) into ctxt->sax 
       (xmlSAXHandler*), we need to ensure the destination buffer is large enough.
       The vulnerability would be if sizeof(xmlSAXHandler) < sizeof(xmlSAXHandlerV1).
    */
    SAILR_ASSERT(sizeof(xmlSAXHandler) >= sizeof(xmlSAXHandlerV1));
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    free(sax);
    free(ctxt->sax);
    free(ctxt);
    
    return 0;
}

/* Simplified implementation of xmlInitParserCtxt to reach target line */
void xmlInitParserCtxt(xmlParserCtxt* ctxt, xmlSAXHandler* sax, void* userData) {
    if (sax == NULL) {
        memset(ctxt->sax, 0, sizeof(xmlSAXHandler));
        /* xmlSAXVersion(ctxt->sax, 2); */ /* Stubbed */
        ctxt->userData = ctxt;
    } else {
        if (sax->initialized == XML_SAX2_MAGIC) {
            memcpy(ctxt->sax, sax, sizeof(xmlSAXHandler));
        } else {
            /* TARGET LINE 1494 */
            memset(ctxt->sax, 0, sizeof(xmlSAXHandler));
            memcpy(ctxt->sax, sax, sizeof(xmlSAXHandlerV1));
        }
        ctxt->userData = userData ? userData : ctxt;
    }
    
    ctxt->maxatts = 0;
    ctxt->atts = NULL;
    /* Rest of function stubbed */
}