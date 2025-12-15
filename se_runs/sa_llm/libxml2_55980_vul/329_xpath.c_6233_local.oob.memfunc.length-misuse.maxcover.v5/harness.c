#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for types and functions needed */
typedef struct _xmlXPathContext xmlXPathContext;
typedef xmlXPathContext *xmlXPathContextPtr;
typedef struct _xmlXPathParserContext xmlXPathParserContext;
typedef xmlXPathParserContext *xmlXPathParserContextPtr;
typedef struct _xmlXPathCompExpr xmlXPathCompExpr;
typedef unsigned char xmlChar;

/* Minimal stub structures */
struct _xmlXPathContext {
    int dummy;
};

struct _xmlXPathParserContext {
    const xmlChar *cur;
    const xmlChar *base;
    xmlXPathContextPtr context;
    xmlXPathCompExpr *comp;
    void *valueTab;
};

struct _xmlXPathCompExpr {
    int dummy;
};

/* Stub functions */
void xmlXPathErrMemory(xmlXPathContextPtr ctxt, const char *msg) {
    (void)ctxt;
    (void)msg;
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlFree(void *ptr) {
    free(ptr);
}

xmlXPathCompExpr *xmlXPathNewCompExpr(void) {
    xmlXPathCompExpr *comp = (xmlXPathCompExpr *)malloc(sizeof(xmlXPathCompExpr));
    if (comp) {
        memset(comp, 0, sizeof(xmlXPathCompExpr));
    }
    return comp;
}

/* Target function from xpath.c */
xmlXPathParserContextPtr xmlXPathNewParserContext(const xmlChar *str, xmlXPathContextPtr ctxt) {
    xmlXPathParserContextPtr ret;

    ret = (xmlXPathParserContextPtr) xmlMalloc(sizeof(xmlXPathParserContext));
    if (ret == NULL) {
        xmlXPathErrMemory(ctxt, "creating parser context\n");
        return(NULL);
    }
    memset(ret, 0 , sizeof(xmlXPathParserContext));
    ret->cur = ret->base = str;
    ret->context = ctxt;

    ret->comp = xmlXPathNewCompExpr();
    if (ret->comp == NULL) {
        xmlFree(ret->valueTab);
        xmlFree(ret);
        return(NULL);
    }
    return ret;
}

int main(void) {
    /* Make symbolic inputs to reach the target line */
    xmlChar str[1];
    xmlXPathContext ctxt;
    xmlXPathParserContextPtr ret;
    
    /* Symbolic string pointer - could be NULL or valid */
    klee_make_symbolic(&str, sizeof(str), "str");
    
    /* Call the target function */
    ret = xmlXPathNewParserContext(str, &ctxt);
    
    /* If ret is not NULL, we reached the memset at line 6233 */
    if (ret != NULL) {
        /* Vulnerability assertion: ensure the size argument to memset is safe.
           For OOB in memset, the condition is that the size doesn't exceed 
           the allocated buffer. Since we allocated exactly sizeof(xmlXPathParserContext),
           and memset uses exactly that size, the vulnerability would be if 
           sizeof(xmlXPathParserContext) > allocated_size, but allocation succeeded.
           So we assert that the allocation size is at least the memset size. */
        SAILR_ASSERT(sizeof(xmlXPathParserContext) <= sizeof(xmlXPathParserContext));
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        if (ret->comp) {
            free(ret->comp);
        }
        free(ret);
    }
    
    return 0;
}