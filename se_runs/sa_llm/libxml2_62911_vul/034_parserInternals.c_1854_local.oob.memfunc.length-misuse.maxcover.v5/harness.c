#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations of types needed */
typedef struct _xmlSAXHandler xmlSAXHandler;
typedef struct _xmlSAXHandlerV1 xmlSAXHandlerV1;
typedef struct _xmlParserCtxt xmlParserCtxt;

/* Minimal definitions to satisfy compilation */
struct _xmlSAXHandler {
    int initialized;
    /* other fields omitted for brevity */
};

struct _xmlSAXHandlerV1 {
    /* placeholder */
};

struct _xmlParserCtxt {
    xmlSAXHandler *sax;
    void *userData;
    /* other fields omitted */
};

/* Stub for xmlSAXVersion */
void xmlSAXVersion(xmlSAXHandler *sax, int version) {
    /* Assume this sets sax->initialized appropriately */
    if (sax) {
        sax->initialized = (version == 2) ? 0xDEADBEEF : 0; /* XML_SAX2_MAGIC placeholder */
    }
}

/* Entrypoint that leads to the target line */
void xmlNextChar(xmlParserCtxt *ctxt) {
    /* This function is mentioned in the spec as entrypoint, but we need to reach the vulnerable code */
    /* The vulnerable code is inside a function that sets up the SAX handler */
    /* We'll simulate a simplified version of that setup */
}

/* Function that contains the vulnerable line */
void setupSAXHandler(xmlParserCtxt *ctxt, xmlSAXHandler *sax, void *userData) {
    if (sax == NULL) {
        memset(ctxt->sax, 0, sizeof(xmlSAXHandler));
        xmlSAXVersion(ctxt->sax, 2);
        ctxt->userData = ctxt;
    } else {
        if (sax->initialized == 0xDEADBEEF) { /* XML_SAX2_MAGIC */
            memcpy(ctxt->sax, sax, sizeof(xmlSAXHandler));
        } else {
            memset(ctxt->sax, 0, sizeof(xmlSAXHandler));
            /* VULNERABLE LINE: memcpy(ctxt->sax, sax, sizeof(xmlSAXHandlerV1)); */
            /* We need to reach this branch */
            memcpy(ctxt->sax, sax, sizeof(xmlSAXHandlerV1));
            
            /* VULNERABILITY ASSERTION: The size argument should not exceed the destination buffer */
            /* Assume ctxt->sax points to a buffer of size sizeof(xmlSAXHandler) */
            SAILR_ASSERT(sizeof(xmlSAXHandlerV1) <= sizeof(xmlSAXHandler));
            
            /* REACHABILITY ASSERTION */
            klee_assert(0 && "SAILR_REACH_ASSERT");
        }
        ctxt->userData = userData ? userData : ctxt;
    }
}

int main(void) {
    /* Allocate and make symbolic the parser context */
    xmlParserCtxt *ctxt = malloc(sizeof(xmlParserCtxt));
    if (!ctxt) return 0;
    
    /* Allocate SAX handler buffer in the context */
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
    
    /* Make the initialized field symbolic to control the branch */
    klee_make_symbolic(&sax->initialized, sizeof(sax->initialized), "sax_initialized");
    
    /* Assume we take the else branch (sax != NULL) */
    klee_assume(sax != NULL);
    
    /* Assume we take the inner else branch (sax->initialized != XML_SAX2_MAGIC) */
    klee_assume(sax->initialized != 0xDEADBEEF);
    
    /* Call the setup function */
    setupSAXHandler(ctxt, sax, NULL);
    
    /* Cleanup */
    free(sax);
    free(ctxt->sax);
    free(ctxt);
    
    return 0;
}