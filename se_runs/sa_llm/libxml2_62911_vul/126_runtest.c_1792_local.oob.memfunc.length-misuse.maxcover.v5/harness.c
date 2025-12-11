#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stubs for libxml2 types and functions needed to reach target */
typedef struct _xmlParserCtxt xmlParserCtxt;
typedef xmlParserCtxt *xmlParserCtxtPtr;
typedef struct _xmlSAXHandler xmlSAXHandler;
typedef struct _xmlDoc xmlDoc;

struct _xmlParserCtxt {
    xmlSAXHandler *sax;
    xmlDoc *myDoc;
    int wellFormed;
    int errNo;
};

struct _xmlSAXHandler {
    char placeholder[256];
};

/* Global handler variables referenced in the snippet */
xmlSAXHandler debugSAXHandler;
xmlSAXHandler debugSAX2Handler;

/* Stub functions */
xmlParserCtxtPtr xmlCreateFileParserCtxt(const char *filename) {
    xmlParserCtxtPtr ctxt = (xmlParserCtxtPtr)malloc(sizeof(struct _xmlParserCtxt));
    if (!ctxt) return NULL;
    
    ctxt->sax = (xmlSAXHandler *)malloc(sizeof(xmlSAXHandler));
    if (!ctxt->sax) {
        free(ctxt);
        return NULL;
    }
    
    ctxt->myDoc = NULL;
    ctxt->wellFormed = 1;
    ctxt->errNo = 0;
    return ctxt;
}

void xmlCtxtUseOptions(xmlParserCtxtPtr ctxt, int options) {
    /* Stub implementation */
}

void xmlParseDocument(xmlParserCtxtPtr ctxt) {
    /* Stub implementation */
}

void xmlFreeDoc(xmlDoc *doc) {
    /* Stub implementation */
}

/* Main harness */
int main(void) {
    /* Symbolic inputs */
    char filename[256];
    int options;
    
    klee_make_symbolic(filename, sizeof(filename), "filename");
    klee_make_symbolic(&options, sizeof(options), "options");
    
    /* Assume filename is null-terminated */
    klee_assume(filename[255] == '\0');
    
    /* Assume options has XML_PARSE_SAX1 bit set to take the vulnerable path */
    #define XML_PARSE_SAX1 (1 << 0)
    klee_assume((options & XML_PARSE_SAX1) != 0);
    
    /* Create parser context */
    xmlParserCtxtPtr ctxt = xmlCreateFileParserCtxt(filename);
    if (!ctxt) return 0;
    
    /* This is the target line from runtest.c:1792 */
    if (options & XML_PARSE_SAX1) {
        /* Vulnerability assertion: memcpy size should not exceed destination buffer size */
        /* ctxt->sax points to a single xmlSAXHandler, so buffer size is sizeof(xmlSAXHandler) */
        SAILR_ASSERT(sizeof(xmlSAXHandler) >= sizeof(xmlSAXHandler));
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        memcpy(ctxt->sax, &debugSAXHandler, sizeof(xmlSAXHandler));
        options -= XML_PARSE_SAX1;
    } else {
        memcpy(ctxt->sax, &debugSAX2Handler, sizeof(xmlSAXHandler));
    }
    
    /* Continue with rest of the code path */
    xmlCtxtUseOptions(ctxt, options);
    xmlParseDocument(ctxt);
    int ret = ctxt->wellFormed ? 0 : ctxt->errNo;
    if (ctxt->myDoc) {
        xmlFreeDoc(ctxt->myDoc);
    }
    
    /* Cleanup */
    if (ctxt->sax) free(ctxt->sax);
    free(ctxt);
    
    return 0;
}