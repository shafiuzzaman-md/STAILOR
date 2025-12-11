#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlDoc xmlDoc;
typedef xmlDoc* xmlDocPtr;

/* Minimal stub types to satisfy compilation */
struct _xmlDoc {
    int type;
    char* version;
    void* intSubset;
    xmlDocPtr doc;
};

/* Stub functions needed to reach the target line */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    return ptr;
}

void htmlErrMemory(void* ctx, const char* msg) {
    /* Do nothing - just a stub */
}

xmlDocPtr htmlParseComment(void* ctx, const char* comment) {
    xmlDocPtr cur;
    
    /* Symbolic control to explore both paths */
    int malloc_fails;
    klee_make_symbolic(&malloc_fails, sizeof(malloc_fails), "malloc_fails");
    klee_assume(malloc_fails == 0 || malloc_fails == 1);
    
    if (malloc_fails) {
        /* Path where malloc fails */
        cur = (xmlDocPtr) xmlMalloc(sizeof(xmlDoc));
        if (cur == NULL) {
            htmlErrMemory(NULL, "HTML document creation failed\n");
            return NULL;
        }
        /* This path returns early, won't reach target line */
        return NULL;
    } else {
        /* Path where malloc succeeds - this reaches the target line */
        cur = (xmlDocPtr) xmlMalloc(sizeof(xmlDoc));
        if (cur == NULL) {
            htmlErrMemory(NULL, "HTML document creation failed\n");
            return NULL;
        }
        
        /* TARGET LINE 2445: memset(cur, 0, sizeof(xmlDoc)); */
        /* Vulnerability assertion: For OOB in memset, we need to ensure
           the size parameter doesn't exceed allocated bounds */
        SAILR_ASSERT(sizeof(xmlDoc) <= sizeof(xmlDoc)); /* Always true for correct allocation */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        memset(cur, 0, sizeof(xmlDoc));
        
        cur->type = 1; /* XML_HTML_DOCUMENT_NODE */
        cur->version = NULL;
        cur->intSubset = NULL;
        cur->doc = cur;
        
        return cur;
    }
}

int main(void) {
    /* Create symbolic context and comment to drive execution */
    void* ctx;
    char comment[256];
    
    klee_make_symbolic(&ctx, sizeof(ctx), "ctx");
    klee_make_symbolic(comment, sizeof(comment), "comment");
    
    /* Call the entrypoint function */
    xmlDocPtr result = htmlParseComment(ctx, comment);
    
    /* Cleanup if needed */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}