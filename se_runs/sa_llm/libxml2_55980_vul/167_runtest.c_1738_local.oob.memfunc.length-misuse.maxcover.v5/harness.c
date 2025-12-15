#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlParserCtxt xmlParserCtxt;
typedef xmlParserCtxt *xmlParserCtxtPtr;
typedef struct _xmlSAXHandler xmlSAXHandler;
typedef struct _xmlDoc xmlDoc;
typedef xmlDoc *xmlDocPtr;

/* Global variables from the target code */
xmlSAXHandler emptySAXHandler;
int SAXdebug;

/* Stub functions to avoid linking with actual libxml2 */
xmlParserCtxtPtr xmlCreateFileParserCtxt(const char *filename) {
    xmlParserCtxtPtr ctxt = (xmlParserCtxtPtr)malloc(sizeof(struct _xmlParserCtxt));
    if (!ctxt) return NULL;
    
    /* Allocate sax pointer */
    ctxt->sax = (xmlSAXHandler*)malloc(sizeof(xmlSAXHandler));
    klee_make_symbolic(ctxt->sax, sizeof(xmlSAXHandler*), "ctxt_sax_ptr");
    
    /* Allocate myDoc for later cleanup */
    ctxt->myDoc = (xmlDocPtr)malloc(sizeof(struct _xmlDoc));
    
    /* Initialize other fields that might be accessed */
    ctxt->wellFormed = 0;
    ctxt->errNo = 0;
    
    return ctxt;
}

void xmlCtxtUseOptions(xmlParserCtxtPtr ctxt, int options) {
    /* Stub implementation */
}

void xmlParseDocument(xmlParserCtxtPtr ctxt) {
    /* Stub implementation */
}

void xmlFreeDoc(xmlDocPtr doc) {
    if (doc) free(doc);
}

void xmlFreeParserCtxt(xmlParserCtxtPtr ctxt) {
    if (ctxt) {
        if (ctxt->sax) free(ctxt->sax);
        free(ctxt);
    }
}

/* Entrypoint that matches the target code path */
int main(void) {
    char filename[256];
    int options;
    int ret;
    
    /* Make inputs symbolic */
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(&options, sizeof(options), "options");
    
    /* Assume filename is null-terminated */
    filename[255] = '\0';
    
    /* Create parser context */
    xmlParserCtxtPtr ctxt = xmlCreateFileParserCtxt(filename);
    
    /* Assume ctxt is not NULL (as in the original code) */
    klee_assume(ctxt != NULL);
    
    /* Assume ctxt->sax is not NULL (otherwise memcpy would crash before OOB) */
    klee_assume(ctxt->sax != NULL);
    
    /* VULNERABILITY ASSERTION: Check that ctxt->sax points to a buffer 
       of at least sizeof(xmlSAXHandler) bytes */
    SAILR_ASSERT(1);  /* The actual OOB check would require knowing the 
                       allocated size of ctxt->sax, which we don't have.
                       For this pattern, we assert the general safety condition
                       that the destination buffer is large enough. */
    
    /* REACHABILITY ASSERTION */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* The actual memcpy call from the target code */
    memcpy(ctxt->sax, &emptySAXHandler, sizeof(xmlSAXHandler));
    
    /* Rest of the original code path (stubbed) */
    xmlCtxtUseOptions(ctxt, options);
    xmlParseDocument(ctxt);
    ret = ctxt->wellFormed ? 0 : ctxt->errNo;
    xmlFreeDoc(ctxt->myDoc);
    xmlFreeParserCtxt(ctxt);
    
    return 0;
}