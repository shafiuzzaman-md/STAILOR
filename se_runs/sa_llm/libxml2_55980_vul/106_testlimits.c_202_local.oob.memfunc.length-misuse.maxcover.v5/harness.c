#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations of functions from testlimits.c that we need */
typedef struct {
    int instate;
    int curlen;
    char *buffer;
    char *current;
    int len;
    int rlen;
} xmlParserCtxt;

/* Minimal stub of the function containing the target line */
static void xmlParseContent(xmlParserCtxt *ctxt) {
    /* Simulate the logic around line 202 */
    if (ctxt->instate == 2) {
        if (ctxt->len >= ctxt->rlen) {
            ctxt->len = ctxt->rlen;
            ctxt->rlen = 0;
            
            /* TARGET LINE 202: memcpy(buffer, current, len); */
            /* Vulnerability assertion: ensure len doesn't exceed buffer bounds */
            /* We assume buffer has size BUFFER_SIZE */
            #define BUFFER_SIZE 1024
            SAILR_ASSERT(ctxt->len <= BUFFER_SIZE);
            klee_assert(0 && "SAILR_REACH_ASSERT");
            
            memcpy(ctxt->buffer, ctxt->current, ctxt->len);
            ctxt->instate = 3;
            ctxt->curlen = 0;
        } else {
            memcpy(ctxt->buffer, ctxt->current, ctxt->len);
            ctxt->rlen -= ctxt->len;
            ctxt->current += ctxt->len;
        }
    }
}

int main(void) {
    xmlParserCtxt ctxt;
    
    /* Make symbolic the variables that control the path */
    klee_make_symbolic(&ctxt.instate, sizeof(ctxt.instate), "instate");
    klee_make_symbolic(&ctxt.len, sizeof(ctxt.len), "len");
    klee_make_symbolic(&ctxt.rlen, sizeof(ctxt.rlen), "rlen");
    
    /* Constrain instate to be 2 to reach the target branch */
    klee_assume(ctxt.instate == 2);
    
    /* Constrain len >= rlen to take the first branch (line 202) */
    klee_assume(ctxt.len >= ctxt.rlen);
    
    /* Ensure non-negative values */
    klee_assume(ctxt.len >= 0);
    klee_assume(ctxt.rlen >= 0);
    
    /* Allocate and initialize buffer and current */
    ctxt.buffer = malloc(1024);
    ctxt.current = malloc(1024);
    
    /* Make buffer and current symbolic for completeness */
    klee_make_symbolic(ctxt.buffer, 1024, "buffer");
    klee_make_symbolic(ctxt.current, 1024, "current");
    
    /* Initialize other fields */
    ctxt.curlen = 0;
    
    /* Call the function that contains the target line */
    xmlParseContent(&ctxt);
    
    /* Cleanup */
    free(ctxt.buffer);
    free(ctxt.current);
    
    return 0;
}