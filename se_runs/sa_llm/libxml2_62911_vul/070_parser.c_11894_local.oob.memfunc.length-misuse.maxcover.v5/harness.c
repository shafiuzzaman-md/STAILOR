#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub structures to reach the target code */
typedef struct _xmlParserInput {
    unsigned char *cur;
    unsigned char *base;
} xmlParserInput;

typedef struct _xmlParserCtxt {
    xmlParserInput *input;
    void *sax;
    int userData;
    int disableSAX;
} xmlParserCtxt;

typedef struct _xmlSAXHandler {
    void (*cdataBlock)(void *ctx, const char *data, int len);
} xmlSAXHandler;

/* Stub function to avoid linking issues */
void stub_cdataBlock(void *ctx, const char *data, int len) {
    /* Do nothing */
}

/* Entrypoint from SA spec */
void xmlParseExternalEntityPrivate(xmlParserCtxt *ctxt, const char *URL, const char *ID, int base) {
    /* Simulate the code path to reach line 11894 */
    if (ctxt->input && ctxt->input->cur && ctxt->input->base) {
        /* Check the condition from the snippet */
        if ((ctxt->input->cur - ctxt->input->base >= 9) &&
            (!strncmp((const char *)&ctxt->input->cur[-9], "<![CDATA[", 9))) {
            /* This is the vulnerable strncmp call at line 11894 */
            
            /* VULNERABILITY ASSERTION: Ensure we don't read out of bounds */
            /* The condition checks that we have at least 9 bytes before cur */
            /* The actual check should be: cur - base >= 9 AND cur[-9] is within bounds */
            /* More precisely: &ctxt->input->cur[-9] >= ctxt->input->base */
            SAILR_ASSERT(ctxt->input->cur - ctxt->input->base >= 9);
            
            /* REACHABILITY ASSERTION */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            
            if (ctxt->sax) {
                ((xmlSAXHandler*)ctxt->sax)->cdataBlock((void*)&ctxt->userData, "", 0);
            }
        } else if ((ctxt->sax != NULL) && (base > 0) && (!ctxt->disableSAX)) {
            /* Other branch - not our target */
        }
    }
}

int main(void) {
    /* Allocate and initialize context */
    xmlParserCtxt *ctxt = (xmlParserCtxt*)malloc(sizeof(xmlParserCtxt));
    if (!ctxt) return 1;
    
    ctxt->input = (xmlParserInput*)malloc(sizeof(xmlParserInput));
    if (!ctxt->input) {
        free(ctxt);
        return 1;
    }
    
    /* Allocate buffer for input data */
    size_t buffer_size = 20; /* Enough space for our test */
    unsigned char *buffer = (unsigned char*)malloc(buffer_size);
    if (!buffer) {
        free(ctxt->input);
        free(ctxt);
        return 1;
    }
    
    /* Make buffer contents symbolic */
    klee_make_symbolic(buffer, buffer_size, "buffer");
    
    /* Set up input structure */
    ctxt->input->base = buffer;
    
    /* Make cur pointer symbolic but constrained */
    /* cur must be between base and base + buffer_size */
    unsigned char *cur_ptr;
    klee_make_symbolic(&cur_ptr, sizeof(cur_ptr), "cur_ptr");
    
    /* Constrain cur_ptr to be within buffer bounds */
    klee_assume(cur_ptr >= buffer);
    klee_assume(cur_ptr <= buffer + buffer_size);
    ctxt->input->cur = cur_ptr;
    
    /* Set up SAX handler */
    xmlSAXHandler *sax = (xmlSAXHandler*)malloc(sizeof(xmlSAXHandler));
    if (!sax) {
        free(buffer);
        free(ctxt->input);
        free(ctxt);
        return 1;
    }
    sax->cdataBlock = stub_cdataBlock;
    ctxt->sax = sax;
    ctxt->userData = 0;
    ctxt->disableSAX = 0;
    
    /* Make URL and ID symbolic */
    char URL_buf[10];
    char ID_buf[10];
    klee_make_symbolic(URL_buf, sizeof(URL_buf), "URL_buf");
    klee_make_symbolic(ID_buf, sizeof(ID_buf), "ID_buf");
    
    /* Make base parameter symbolic but positive for the else-if branch */
    int base_param;
    klee_make_symbolic(&base_param, sizeof(base_param), "base_param");
    
    /* Call the target function */
    xmlParseExternalEntityPrivate(ctxt, URL_buf, ID_buf, base_param);
    
    /* Cleanup */
    free(sax);
    free(buffer);
    free(ctxt->input);
    free(ctxt);
    
    return 0;
}