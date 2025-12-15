#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 functions we need */
typedef struct _xmlParserCtxt xmlParserCtxt;
typedef xmlParserCtxt *xmlParserCtxtPtr;
typedef struct _xmlParserInputBuffer xmlParserInputBuffer;
typedef xmlParserInputBuffer *xmlParserInputBufferPtr;
typedef struct _xmlParserInput xmlParserInput;
typedef xmlParserInput *xmlParserInputPtr;

/* Stub implementations of required libxml2 functions */
xmlParserCtxtPtr xmlNewParserCtxt(void) {
    xmlParserCtxtPtr ctxt = (xmlParserCtxtPtr)malloc(sizeof(xmlParserCtxt));
    if (ctxt) {
        klee_make_symbolic(ctxt, sizeof(xmlParserCtxt), "ctxt");
    }
    return ctxt;
}

void xmlFreeParserCtxt(xmlParserCtxtPtr ctxt) {
    if (ctxt) free(ctxt);
}

/* The function we need to reach */
static int testCharRanges(void) {
    char data[5];
    xmlParserCtxtPtr ctxt;
    xmlParserInputBufferPtr buf;
    xmlParserInputPtr input;
    int test_ret = 0;

    /* TARGET LINE 602: memset(data, 0, 5); */
    memset(data, 0, 5);
    
    /* Vulnerability assertion: ensure the length (5) doesn't exceed buffer size */
    SAILR_ASSERT(5 <= sizeof(data));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /*
     * Set up a parsing context using the above data buffer as
     * the current input source.
     */
    ctxt = xmlNewParserCtxt();
    if (ctxt == NULL) {
        return 1;
    }
    
    xmlFreeParserCtxt(ctxt);
    return test_ret;
}

int main(void) {
    /* Make symbolic variables to explore different paths */
    int symbolic_choice;
    klee_make_symbolic(&symbolic_choice, sizeof(symbolic_choice), "choice");
    
    /* Assume conditions that would lead to calling testCharRanges */
    klee_assume(symbolic_choice > 0);
    
    /* Call the target function */
    return testCharRanges();
}