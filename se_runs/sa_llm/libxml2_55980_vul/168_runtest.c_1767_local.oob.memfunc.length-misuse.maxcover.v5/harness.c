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

/* Global variables referenced in the target code */
xmlSAXHandler debugSAXHandler;
xmlSAXHandler debugSAX2Handler;

/* Constants from libxml2 */
#define XML_PARSE_SAX1 (1 << 0)

/* Stub functions to avoid linking with libxml2 */
xmlParserCtxtPtr xmlCreateFileParserCtxt(const char *filename) {
    xmlParserCtxtPtr ctxt = (xmlParserCtxtPtr)malloc(sizeof(struct _xmlParserCtxt));
    if (ctxt) {
        ctxt->sax = (xmlSAXHandler*)malloc(sizeof(xmlSAXHandler));
        klee_assume(ctxt->sax != NULL);
    }
    return ctxt;
}

void xmlCtxtUseOptions(xmlParserCtxtPtr ctxt, int options) {
    /* Stub implementation */
}

void xmlParseDocument(xmlParserCtxtPtr ctxt) {
    /* Stub implementation */
}

void xmlFreeDoc(void *doc) {
    /* Stub implementation */
}

/* Entrypoint from the target file - simplified version */
static int testSAXCopy(const char *filename, int options) {
    xmlParserCtxtPtr ctxt = xmlCreateFileParserCtxt(filename);
    if (ctxt == NULL) {
        return -1;
    }
    
    if (options & XML_PARSE_SAX1) {
        /* TARGET LINE 1767: memcpy(ctxt->sax, debugSAXHandler, sizeof(xmlSAXHandler)); */
        /* Vulnerability assertion: ensure ctxt->sax has enough space */
        SAILR_ASSERT(ctxt->sax != NULL);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        memcpy(ctxt->sax, &debugSAXHandler, sizeof(xmlSAXHandler));
        options -= XML_PARSE_SAX1;
    } else {
        memcpy(ctxt->sax, &debugSAX2Handler, sizeof(xmlSAXHandler));
    }
    
    xmlCtxtUseOptions(ctxt, options);
    xmlParseDocument(ctxt);
    
    /* Cleanup */
    free(ctxt->sax);
    free(ctxt);
    return 0;
}

int main(void) {
    /* Symbolic inputs to drive execution */
    char filename[256];
    int options;
    
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(&options, sizeof(options), "options");
    
    /* Assume filename is null-terminated */
    filename[255] = '\0';
    
    /* Assume options has the SAX1 bit set to reach the target path */
    klee_assume((options & XML_PARSE_SAX1) != 0);
    
    /* Call the function that contains the target code */
    testSAXCopy(filename, options);
    
    return 0;
}