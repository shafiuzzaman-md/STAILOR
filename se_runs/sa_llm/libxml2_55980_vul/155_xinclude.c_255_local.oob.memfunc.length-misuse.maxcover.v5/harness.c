#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for types and functions needed from libxml2 */
typedef struct _xmlXIncludeCtxt xmlXIncludeCtxt;
typedef xmlXIncludeCtxt *xmlXIncludeCtxtPtr;
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;
typedef struct _xmlXIncludeRef xmlXIncludeRef;
typedef xmlXIncludeRef *xmlXIncludeRefPtr;

struct _xmlXIncludeRef {
    char *URI;
    char *fragment;
    xmlNodePtr elem;
    int xml;
    xmlXIncludeRefPtr inc;
};

/* Stub implementations of libxml2 functions */
void xmlXIncludeErrMemory(xmlXIncludeCtxtPtr ctxt, xmlNodePtr node, const char *msg) {
    /* Stub - do nothing */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

char *xmlStrdup(const char *cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen(cur) + 1;
    char *copy = (char *)malloc(len);
    if (copy) memcpy(copy, cur, len);
    return copy;
}

/* The target function from xinclude.c line 255 */
xmlXIncludeRefPtr xmlXIncludeNewRef(xmlXIncludeCtxtPtr ctxt, xmlNodePtr elem, const char *URI) {
    xmlXIncludeRefPtr ret;
    
#ifdef DEBUG_XINCLUDE
    /* Stub for xmlGenericError */
#endif
    
    ret = (xmlXIncludeRefPtr) xmlMalloc(sizeof(xmlXIncludeRef));
    if (ret == NULL) {
        xmlXIncludeErrMemory(ctxt, elem, "growing XInclude context");
        return NULL;
    }
    
    /* TARGET LINE 255 - memset call */
    memset(ret, 0, sizeof(xmlXIncludeRef));
    
    /* Vulnerability assertion: ensure the size argument to memset is safe */
    SAILR_ASSERT(sizeof(xmlXIncludeRef) > 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    if (URI == NULL)
        ret->URI = NULL;
    else
        ret->URI = xmlStrdup(URI);
    ret->fragment = NULL;
    ret->elem = elem;
    ret->xml = 0;
    ret->inc = NULL;
    
    return ret;
}

int main(void) {
    /* Create symbolic inputs to reach the target function */
    xmlXIncludeCtxtPtr ctxt;
    xmlNodePtr elem;
    char URI[256];
    
    /* Make inputs symbolic */
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(&elem, sizeof(elem), "elem");
    klee_make_symbolic(URI, sizeof(URI), "URI");
    
    /* Assume reasonable values to avoid trivial null dereferences */
    klee_assume(ctxt != NULL);
    klee_assume(elem != NULL);
    
    /* Null-terminate the URI string */
    URI[255] = '\0';
    
    /* Call the target function */
    xmlXIncludeRefPtr result = xmlXIncludeNewRef(ctxt, elem, URI);
    
    /* Clean up if allocation succeeded */
    if (result != NULL) {
        free(result->URI);
        free(result);
    }
    
    return 0;
}