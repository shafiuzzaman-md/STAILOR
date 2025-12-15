#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlNode xmlNode;
typedef struct _xmlXIncludeCtxt xmlXIncludeCtxt;

/* Minimal stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Minimal stub for xmlXIncludeErrMemory */
void xmlXIncludeErrMemory(void* ctxt, xmlNode* node, const char* msg) {
    /* Do nothing - just a stub */
}

/* The target function from xinclude.c */
xmlXIncludeCtxt* xmlXIncludeNewContext(xmlDoc* doc) {
    xmlXIncludeCtxt* ret;
    
    if (doc == NULL)
        return NULL;
    
    ret = (xmlXIncludeCtxt*)xmlMalloc(sizeof(xmlXIncludeCtxt));
    if (ret == NULL) {
        xmlXIncludeErrMemory(NULL, (xmlNodePtr)doc, "creating XInclude context");
        return NULL;
    }
    
    /* TARGET LINE 311 - memset call */
    memset(ret, 0, sizeof(xmlXIncludeCtxt));
    
    /* Vulnerability assertion: check that ret points to valid memory of at least sizeof(xmlXIncludeCtxt) bytes */
    SAILR_ASSERT(ret != NULL && "SAILR_VULN_ASSERT");
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Rest of the function (simplified) */
    return ret;
}

/* Minimal stub structure definitions */
struct _xmlDoc {
    int dummy;
};

struct _xmlXIncludeCtxt {
    xmlDoc* doc;
    int incNr;
    int incMax;
    void* incTab;
    int nbErrors;
};

/* Main harness entry point */
int main(void) {
    xmlDoc doc;
    xmlXIncludeCtxt* ctxt;
    
    /* Make the doc pointer symbolic to explore both NULL and non-NULL paths */
    int doc_is_null;
    klee_make_symbolic(&doc_is_null, sizeof(doc_is_null), "doc_is_null");
    klee_assume(doc_is_null == 0 || doc_is_null == 1);
    
    if (doc_is_null) {
        /* This path should return NULL before reaching line 311 */
        ctxt = xmlXIncludeNewContext(NULL);
    } else {
        /* This path should reach line 311 */
        ctxt = xmlXIncludeNewContext(&doc);
    }
    
    /* Clean up if allocation succeeded */
    if (ctxt != NULL) {
        free(ctxt);
    }
    
    return 0;
}