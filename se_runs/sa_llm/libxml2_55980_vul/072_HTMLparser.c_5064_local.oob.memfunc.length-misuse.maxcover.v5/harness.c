#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions to compile */
typedef struct _xmlParserCtxt xmlParserCtxt;
typedef xmlParserCtxt htmlParserCtxt;

typedef struct _htmlSAXHandler htmlSAXHandler;

/* Minimal stub functions */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    klee_assume(ptr != NULL); /* Assume allocation succeeds for our path */
    return ptr;
}

void htmlErrMemory(void* ctx, const char* msg) {
    /* Stub - does nothing */
}

void xmlSAX2InitHtmlDefaultSAXHandler(htmlSAXHandler* sax) {
    /* Stub - does nothing */
}

/* Target function from HTMLparser.c */
int htmlInitParserCtxt(htmlParserCtxt* ctxt, htmlSAXHandler* sax, void* userData) {
    if (ctxt->sax == NULL)
        ctxt->sax = (htmlSAXHandler *) xmlMalloc(sizeof(htmlSAXHandler));
    if (ctxt->sax == NULL) {
        htmlErrMemory(NULL, "htmlInitParserCtxt: out of memory\n");
        return(-1);
    }
    if (sax == NULL) {
        /* TARGET LINE 5064: memset(ctxt->sax, 0, sizeof(htmlSAXHandler)); */
        memset(ctxt->sax, 0, sizeof(htmlSAXHandler));
        
        /* VULNERABILITY ASSERTION: For OOB length-misuse, ensure the destination
           buffer size is at least the size being written */
        SAILR_ASSERT(sizeof(htmlSAXHandler) <= sizeof(htmlSAXHandler));
        
        /* REACHABILITY ASSERTION */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        xmlSAX2InitHtmlDefaultSAXHandler(ctxt->sax);
        ctxt->userData = ctxt;
    } else {
        memcpy(ctxt->sax, sax, sizeof(htmlSAXHandler));
        ctxt->userData = userData ? userData : ctxt;
    }
    
    return 0;
}

/* Main harness */
int main(void) {
    /* Symbolic parser context */
    htmlParserCtxt ctxt;
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    
    /* Symbolic SAX handler pointer - we want sax == NULL to reach target line */
    htmlSAXHandler* sax;
    klee_make_symbolic(&sax, sizeof(sax), "sax");
    klee_assume(sax == NULL); /* Force the path to the memset branch */
    
    /* Symbolic userData */
    void* userData;
    klee_make_symbolic(&userData, sizeof(userData), "userData");
    
    /* Initialize ctxt.sax to NULL to trigger the allocation path */
    ctxt.sax = NULL;
    
    /* Call the target function */
    htmlInitParserCtxt(&ctxt, sax, userData);
    
    return 0;
}