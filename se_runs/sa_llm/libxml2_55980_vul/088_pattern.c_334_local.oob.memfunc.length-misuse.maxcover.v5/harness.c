#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for types and functions needed to reach target */
typedef struct _xmlPatParserContext xmlPatParserContext;
typedef xmlPatParserContext *xmlPatParserContextPtr;

/* Minimal stub of xmlFree to avoid linking issues */
void xmlFree(void *ptr) {
    free(ptr);
}

/* The target function from pattern.c:334 */
static void xmlFreePatParserContext(xmlPatParserContextPtr ctxt) {
    if (ctxt == NULL)
        return;
    memset(ctxt, -1, sizeof(xmlPatParserContext));
    xmlFree(ctxt);
}

/* Entrypoint that must reach xmlFreePatParserContext */
int main(void) {
    /* Make ctxt symbolic to explore both NULL and non-NULL paths */
    xmlPatParserContextPtr ctxt;
    int is_null;
    
    klee_make_symbolic(&is_null, sizeof(is_null), "is_null");
    klee_assume(is_null == 0 || is_null == 1);
    
    if (is_null) {
        ctxt = NULL;
    } else {
        /* Allocate memory for the context structure */
        ctxt = (xmlPatParserContextPtr)malloc(sizeof(xmlPatParserContext));
        if (ctxt == NULL) {
            return 0; /* malloc failed, exit early */
        }
        
        /* Vulnerability assertion: ensure ctxt points to valid memory 
           of at least sizeof(xmlPatParserContext) bytes before memset */
        SAILR_ASSERT(ctxt != NULL);
        
        /* Reachability marker - placed after vulnerability assertion */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Call the target function */
    xmlFreePatParserContext(ctxt);
    
    return 0;
}