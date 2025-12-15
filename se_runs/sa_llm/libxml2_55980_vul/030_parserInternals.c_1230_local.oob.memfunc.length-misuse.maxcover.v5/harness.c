#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlParserCtxt xmlParserCtxt;
typedef xmlParserCtxt *xmlParserCtxtPtr;

typedef struct _xmlParserInput {
    int line;
    int col;
    int standalone;
    /* Other fields omitted for brevity */
} xmlParserInput;
typedef xmlParserInput *xmlParserInputPtr;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    return ptr;
}

/* Stub for xmlErrMemory */
void xmlErrMemory(xmlParserCtxtPtr ctxt, const char* msg) {
    (void)ctxt;
    (void)msg;
}

/* Target function from parserInternals.c */
xmlParserInputPtr xmlNewInputStream(xmlParserCtxtPtr ctxt) {
    xmlParserInputPtr input;

    input = (xmlParserInputPtr) xmlMalloc(sizeof(xmlParserInput));
    if (input == NULL) {
        xmlErrMemory(ctxt,  "couldn't allocate a new input stream\n");
        return(NULL);
    }
    
    /* TARGET LINE 1230 - memset with sizeof(xmlParserInput) */
    memset(input, 0, sizeof(xmlParserInput));
    
    /* Vulnerability assertion: ensure allocation size >= memset size */
    SAILR_ASSERT(sizeof(xmlParserInput) <= malloc_usable_size(input));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    input->line = 1;
    input->col = 1;
    input->standalone = -1;
    
    return input;
}

/* Helper to get usable size of allocation (simplified for KLEE) */
size_t malloc_usable_size(void* ptr) {
    if (ptr == NULL) return 0;
    /* In KLEE, we'll make this symbolic to explore different allocation sizes */
    size_t usable_size;
    klee_make_symbolic(&usable_size, sizeof(usable_size), "usable_size");
    return usable_size;
}

int main(void) {
    xmlParserCtxtPtr ctxt = NULL;
    xmlParserInputPtr input;
    
    /* Make context symbolic to explore different paths */
    int ctxt_symbolic;
    klee_make_symbolic(&ctxt_symbolic, sizeof(ctxt_symbolic), "ctxt_symbolic");
    klee_assume(ctxt_symbolic >= 0);
    
    /* Call the target function */
    input = xmlNewInputStream(ctxt);
    
    /* Clean up if allocation succeeded */
    if (input != NULL) {
        free(input);
    }
    
    return 0;
}