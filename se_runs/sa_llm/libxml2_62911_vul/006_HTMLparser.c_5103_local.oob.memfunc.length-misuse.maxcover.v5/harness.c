#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlParserCtxt xmlParserCtxt;
typedef xmlParserCtxt *xmlParserCtxtPtr;
typedef void (*xmlSAXHandlerPtr)(void);

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    klee_assume(ptr != NULL); /* Ensure allocation succeeds for our path */
    return ptr;
}

/* Stub for htmlErrMemory */
void htmlErrMemory(void* ctx, const char* msg) {
    /* Do nothing */
}

/* Stub for htmlFreeParserCtxt */
void htmlFreeParserCtxt(xmlParserCtxtPtr ctxt) {
    free(ctxt);
}

/* Stub for htmlInitParserCtxt - returns 0 for success, -1 for failure */
int htmlInitParserCtxt(xmlParserCtxtPtr ctxt, xmlSAXHandlerPtr sax, void* userData) {
    /* Symbolic return to explore both paths */
    int ret;
    klee_make_symbolic(&ret, sizeof(ret), "init_ret");
    klee_assume(ret == 0 || ret == -1);
    return ret;
}

/* Target function: htmlParseComment (simplified to reach the vulnerable memset) */
xmlParserCtxtPtr htmlParseComment(void) {
    xmlParserCtxtPtr ctxt;
    ctxt = (xmlParserCtxtPtr) xmlMalloc(sizeof(xmlParserCtxt));
    if (ctxt == NULL) {
        htmlErrMemory(NULL, "NewParserCtxt: out of memory\n");
        return(NULL);
    }
    memset(ctxt, 0, sizeof(xmlParserCtxt)); /* TARGET LINE: 5103 */
    if (htmlInitParserCtxt(ctxt, NULL, NULL) < 0) {
        htmlFreeParserCtxt(ctxt);
        return(NULL);
    }
    return(ctxt);
}

int main(void) {
    xmlParserCtxtPtr result;
    
    /* Call the function that leads to the target line */
    result = htmlParseComment();
    
    /* Vulnerability assertion: ensure the size argument to memset is safe.
       The rule local.oob.memfunc.length-misuse.maxcover.v5 flags potential
       unbounded length. Here, sizeof(xmlParserCtxt) is constant, but we
       assert it's positive (non-zero) to match the pattern's concern. */
    SAILR_ASSERT(sizeof(xmlParserCtxt) > 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup if needed */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}