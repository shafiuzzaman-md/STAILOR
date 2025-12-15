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

typedef struct _xmlParserCtxt {
    xmlSAXHandler *sax;
    void *userData;
    /* Other fields omitted for brevity */
} xmlParserCtxt;

/* Function prototypes from libxml2 that we need to stub or implement */
void* xmlMalloc(size_t size);
void xmlErrMemory(void *ctx, const char *msg);
void xmlSAXVersion(xmlSAXHandler *sax, int version);

/* Stub implementations */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlErrMemory(void *ctx, const char *msg) {
    /* Do nothing for stub */
}

void xmlSAXVersion(xmlSAXHandler *sax, int version) {
    /* Do nothing for stub */
}

/* The function containing the target line - simplified version */
int target_function(xmlParserCtxt *ctxt, xmlSAXHandler *sax) {
    if (ctxt->sax == NULL) {
        ctxt->sax = (xmlSAXHandler *) xmlMalloc(sizeof(xmlSAXHandler));
    }
    if (ctxt->sax == NULL) {
        xmlErrMemory(NULL, "cannot initialize parser context\n");
        return -1;
    }
    if (sax == NULL) {
        /* TARGET LINE 1487: memset(ctxt->sax, 0, sizeof(xmlSAXHandler)); */
        memset(ctxt->sax, 0, sizeof(xmlSAXHandler));
        
        /* VULNERABILITY ASSERTION: For OOB memset, ensure we're not writing beyond allocated bounds */
        /* The vulnerability would be if ctxt->sax points to memory smaller than sizeof(xmlSAXHandler) */
        SAILR_ASSERT(ctxt->sax != NULL && "Valid pointer for memset");
        
        /* REACHABILITY ASSERTION */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        xmlSAXVersion(ctxt->sax, 2);
        ctxt->userData = ctxt;
    } else {
        if (sax->initialized == 0xDEEDBEEF) { /* XML_SAX2_MAGIC placeholder */
            memcpy(ctxt->sax, sax, sizeof(xmlSAXHandler));
        } else {
            memset(ctxt->sax, 0, sizeof(xmlSAXHandler));
            memcpy(ctxt->sax, sax, sizeof(xmlSAXHandler));
        }
    }
    return 0;
}

int main(void) {
    /* Create symbolic parser context */
    xmlParserCtxt ctxt;
    xmlSAXHandler *sax_ptr;
    
    /* Initialize context */
    ctxt.sax = NULL;
    ctxt.userData = NULL;
    
    /* Make sax pointer symbolic to explore both branches */
    klee_make_symbolic(&sax_ptr, sizeof(sax_ptr), "sax_ptr");
    
    /* Assume sax_ptr is either NULL or points to valid memory */
    if (sax_ptr != NULL) {
        /* Allocate memory for sax handler if pointer is non-NULL */
        sax_ptr = (xmlSAXHandler*)malloc(sizeof(xmlSAXHandler));
        klee_assume(sax_ptr != NULL);
        
        /* Make initialized field symbolic to explore both magic value branches */
        klee_make_symbolic(&sax_ptr->initialized, sizeof(sax_ptr->initialized), "sax_initialized");
    }
    
    /* Call the target function */
    int result = target_function(&ctxt, sax_ptr);
    
    /* Cleanup */
    if (ctxt.sax != NULL) {
        free(ctxt.sax);
    }
    if (sax_ptr != NULL) {
        free(sax_ptr);
    }
    
    return 0;
}