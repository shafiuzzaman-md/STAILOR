#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations of minimal types needed to reach the target */
typedef struct _xmlSAXHandlerV1 {
    int initialized;
    /* Minimal fields to avoid crashes */
    void *internalSubset;
    void *isStandalone;
    void *hasInternalSubset;
    void *hasExternalSubset;
    void *resolveEntity;
    void *getEntity;
    void *entityDecl;
    void *notationDecl;
    void *attributeDecl;
    void *elementDecl;
    void *unparsedEntityDecl;
    void *setDocumentLocator;
    void *startDocument;
    void *endDocument;
    void *startElement;
    void *endElement;
    void *reference;
    void *characters;
    void *ignorableWhitespace;
    void *processingInstruction;
    void *comment;
    void *warning;
    void *error;
    void *fatalError;
    void *getParameterEntity;
    void *cdataBlock;
    void *externalSubset;
} xmlSAXHandlerV1;

typedef struct _xmlSAXHandler {
    int initialized;
    /* Same fields as V1 plus any V2 extensions - we just need size difference */
    void *internalSubset;
    void *isStandalone;
    void *hasInternalSubset;
    void *hasExternalSubset;
    void *resolveEntity;
    void *getEntity;
    void *entityDecl;
    void *notationDecl;
    void *attributeDecl;
    void *elementDecl;
    void *unparsedEntityDecl;
    void *setDocumentLocator;
    void *startDocument;
    void *endDocument;
    void *startElement;
    void *endElement;
    void *reference;
    void *characters;
    void *ignorableWhitespace;
    void *processingInstruction;
    void *comment;
    void *warning;
    void *error;
    void *fatalError;
    void *getParameterEntity;
    void *cdataBlock;
    void *externalSubset;
    /* V2 extensions */
    unsigned int initialized2;
    const char *nsUri;
    void *startElementNs;
    void *endElementNs;
    void *serror;
} xmlSAXHandler;

typedef struct _xmlParserCtxt {
    xmlSAXHandler *sax;
    void *userData;
    int maxatts;
    void **atts;
    void *inputTab;
    /* Minimal fields to avoid crashes */
    int errNo;
    int disableSAX;
    int wellFormed;
    int valid;
} xmlParserCtxt;

/* Minimal function prototypes */
void xmlSAXVersion(xmlSAXHandler *sax, int version);

/* Stub for xmlSAXVersion to avoid linking issues */
void xmlSAXVersion(xmlSAXHandler *sax, int version) {
    if (sax) {
        sax->initialized = (version == 2) ? 0xDEEDBEEF : 0; /* XML_SAX2_MAGIC */
    }
}

/* Target function from parserInternals.c */
static void target_function(xmlParserCtxt *ctxt, xmlSAXHandler *sax, void *userData) {
    if (ctxt->sax == NULL) {
        ctxt->sax = (xmlSAXHandler *)malloc(sizeof(xmlSAXHandler));
        memset(ctxt->sax, 0, sizeof(xmlSAXHandler));
        xmlSAXVersion(ctxt->sax, 2);
        ctxt->userData = ctxt;
    } else {
        if (sax->initialized == 0xDEEDBEEF) { /* XML_SAX2_MAGIC */
            memcpy(ctxt->sax, sax, sizeof(xmlSAXHandler));
        } else {
            memset(ctxt->sax, 0, sizeof(xmlSAXHandler));
            /* TARGET LINE 1495 - vulnerable memcpy */
            SAILR_ASSERT(sizeof(xmlSAXHandlerV1) <= sizeof(xmlSAXHandler));
            klee_assert(0 && "SAILR_REACH_ASSERT");
            memcpy(ctxt->sax, sax, sizeof(xmlSAXHandlerV1));
        }
        ctxt->userData = userData ? userData : ctxt;
    }
    
    ctxt->maxatts = 0;
    ctxt->atts = NULL;
    if (ctxt->inputTab == NULL) {
        /* Minimal initialization to avoid crash */
        ctxt->inputTab = malloc(16);
    }
}

int main(void) {
    /* Allocate and initialize parser context */
    xmlParserCtxt *ctxt = (xmlParserCtxt *)malloc(sizeof(xmlParserCtxt));
    memset(ctxt, 0, sizeof(xmlParserCtxt));
    
    /* Allocate sax handler in context (non-NULL path) */
    ctxt->sax = (xmlSAXHandler *)malloc(sizeof(xmlSAXHandler));
    memset(ctxt->sax, 0, sizeof(xmlSAXHandler));
    
    /* Create symbolic SAX handler */
    xmlSAXHandler *sax = (xmlSAXHandler *)malloc(sizeof(xmlSAXHandler));
    klee_make_symbolic(sax, sizeof(xmlSAXHandler), "sax");
    
    /* Constrain initialized field to be non-XML_SAX2_MAGIC to take the else branch */
    klee_assume(sax->initialized != 0xDEEDBEEF);
    
    /* Create symbolic userData */
    void *userData = malloc(1);
    klee_make_symbolic(userData, 1, "userData");
    
    /* Call the target function */
    target_function(ctxt, sax, userData);
    
    /* Cleanup */
    free(ctxt->sax);
    free(ctxt->inputTab);
    free(ctxt);
    free(sax);
    free(userData);
    
    return 0;
}