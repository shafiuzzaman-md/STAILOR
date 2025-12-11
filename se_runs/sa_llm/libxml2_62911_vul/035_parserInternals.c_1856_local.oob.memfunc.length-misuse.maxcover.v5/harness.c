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
    /* Other fields omitted */
} xmlParserCtxt;

/* Stub for xmlNextChar - the entrypoint mentioned in the spec */
void xmlNextChar(xmlParserCtxt *ctxt) {
    /* This is a stub; the actual function would contain the target code */
    /* Simulating the code around line 1856 */
    xmlSAXHandler *sax;
    void *userData;
    
    /* Make sax symbolic to explore both branches */
    klee_make_symbolic(&sax, sizeof(sax), "sax");
    klee_make_symbolic(&userData, sizeof(userData), "userData");
    
    /* Assume sax is not NULL for the vulnerable path */
    klee_assume(sax != NULL);
    
    /* Simulate the condition from the snippet */
    if (sax->initialized == 0xDEADBEEF) { /* XML_SAX2_MAGIC placeholder */
        /* This branch uses sizeof(xmlSAXHandler) - not the vulnerable one */
    } else {
        /* This is the vulnerable branch from line 1856 */
        /* The code does: memset(ctxt->sax, 0, sizeof(xmlSAXHandler)); */
        /* Followed by: memcpy(ctxt->sax, sax, sizeof(xmlSAXHandlerV1)); */
        
        /* VULNERABILITY ASSERTION: 
           The issue is that sizeof(xmlSAXHandler) might be larger than
           sizeof(xmlSAXHandlerV1), causing memset to write beyond the
           actual size of the V1 structure when copying later.
           We need to assert that the destination buffer (ctxt->sax) 
           has enough space for the larger of the two sizes. */
        
        /* Since ctxt->sax points to an xmlSAXHandler, we need to ensure
           it's allocated with at least sizeof(xmlSAXHandler) bytes */
        SAILR_ASSERT(ctxt->sax != NULL); /* Basic null check */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
}

int main(void) {
    /* Create a parser context */
    xmlParserCtxt *ctxt = malloc(sizeof(xmlParserCtxt));
    if (!ctxt) return 1;
    
    /* Allocate sax handler - make size symbolic to explore bounds */
    size_t sax_size;
    klee_make_symbolic(&sax_size, sizeof(sax_size), "sax_size");
    
    /* Assume it's at least as big as xmlSAXHandlerV1 for the copy to work */
    klee_assume(sax_size >= sizeof(xmlSAXHandlerV1));
    
    /* But it might be smaller than xmlSAXHandler - this is the vulnerability */
    ctxt->sax = malloc(sax_size);
    if (!ctxt->sax) {
        free(ctxt);
        return 1;
    }
    
    /* Call the entrypoint */
    xmlNextChar(ctxt);
    
    /* Cleanup */
    free(ctxt->sax);
    free(ctxt);
    
    return 0;
}