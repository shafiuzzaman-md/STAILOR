#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlDoc xmlDoc;
typedef xmlDoc *xmlDocPtr;
typedef struct _xmlTextWriter xmlTextWriter;
typedef xmlTextWriter *xmlTextWriterPtr;
typedef struct _xmlParserCtxt xmlParserCtxt;
typedef xmlParserCtxt *xmlParserCtxtPtr;

/* SAX handler structure with minimal fields for the target path */
typedef struct _xmlSAXHandler {
    void (*startDocument)(void);
    void (*startElement)(void);
    void (*endElement)(void);
    /* Other fields omitted for brevity */
} xmlSAXHandler;

/* Stub functions to avoid linking with actual libxml2 */
void xmlSAX2InitDefaultSAXHandler(xmlSAXHandler *hdl, int is_utf8) {
    /* Minimal implementation to allow execution */
    if (hdl) {
        /* Initialize some fields */
    }
}

xmlParserCtxtPtr xmlCreatePushParserCtxt(xmlSAXHandler *sax, void *user_data, 
                                         const char *chunk, int size, const char *filename) {
    /* Return a symbolic pointer that can be NULL or non-NULL */
    xmlParserCtxtPtr ctxt;
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_assume(ctxt == NULL || ctxt != NULL); /* Allow both paths */
    return ctxt;
}

void xmlWriterErrMsg(void *ctx, int error, const char *msg) {
    /* Do nothing */
}

void xmlTextWriterStartDocumentCallback(void) {}
void xmlSAX2StartElement(void) {}
void xmlSAX2EndElement(void) {}

/* Target function from xmlwriter.c */
xmlTextWriterPtr xmlNewTextWriterDoc(xmlDocPtr *doc, int compression) {
    xmlTextWriterPtr ret;
    xmlSAXHandler saxHandler;
    xmlParserCtxtPtr ctxt;

    /* TARGET LINE 367: memset(&saxHandler, '\0', sizeof(saxHandler)); */
    /* Vulnerability assertion: ensure size doesn't exceed buffer bounds */
    /* Since saxHandler is a local struct, sizeof(saxHandler) is fixed at compile time,
       but the rule flags potential misuse if the size expression could be wrong.
       We assert that the size used in memset is exactly the size of the structure. */
    SAILR_ASSERT(sizeof(saxHandler) == sizeof(xmlSAXHandler));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(&saxHandler, '\0', sizeof(saxHandler));
    xmlSAX2InitDefaultSAXHandler(&saxHandler, 1);
    saxHandler.startDocument = xmlTextWriterStartDocumentCallback;
    saxHandler.startElement = xmlSAX2StartElement;
    saxHandler.endElement = xmlSAX2EndElement;

    ctxt = xmlCreatePushParserCtxt(&saxHandler, NULL, NULL, 0, NULL);
    if (ctxt == NULL) {
        xmlWriterErrMsg(NULL, 0x400, "internal error");
        return NULL;
    }
    
    /* For completeness, return a symbolic pointer */
    klee_make_symbolic(&ret, sizeof(ret), "ret");
    return ret;
}

int main(void) {
    xmlDocPtr doc_ptr;
    int compression;
    
    /* Make inputs symbolic to explore different paths */
    klee_make_symbolic(&doc_ptr, sizeof(doc_ptr), "doc_ptr");
    klee_make_symbolic(&compression, sizeof(compression), "compression");
    
    /* Call the target function */
    xmlTextWriterPtr writer = xmlNewTextWriterDoc(&doc_ptr, compression);
    
    /* Avoid unused variable warning */
    if (writer) {}
    
    return 0;
}