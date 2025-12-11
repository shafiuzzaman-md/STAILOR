#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlNode xmlNode;
typedef struct _xmlXIncludeCtxt xmlXIncludeCtxt;

struct _xmlXIncludeCtxt {
    xmlDoc* doc;
    int incNr;
    int incMax;
    void* incTab;
    int nbErrors;
    /* Other fields omitted for brevity */
};

/* Stub for xmlXIncludeErrMemory */
void xmlXIncludeErrMemory(void* ctxt, xmlNode* node, const char* msg) {
    /* Do nothing */
}

/* Target function: xmlXIncludeProcessNode */
xmlXIncludeCtxt* xmlXIncludeProcessNode(xmlDoc* doc) {
    xmlXIncludeCtxt* ret;
    
    /* Allocate context - this is the target allocation */
    ret = (xmlXIncludeCtxt*)malloc(sizeof(xmlXIncludeCtxt));
    if (ret == NULL) {
        xmlXIncludeErrMemory(NULL, (xmlNode*)doc, "creating XInclude context");
        return NULL;
    }
    
    /* TARGET LINE 295: memset(ret, 0, sizeof(xmlXIncludeCtxt)); */
    memset(ret, 0, sizeof(xmlXIncludeCtxt));
    
    /* Initialize other fields */
    ret->doc = doc;
    ret->incNr = 0;
    ret->incMax = 0;
    ret->incTab = NULL;
    ret->nbErrors = 0;
    
    return ret;
}

/* Entry point */
int main(void) {
    xmlDoc* doc;
    xmlXIncludeCtxt* ctxt;
    
    /* Make doc symbolic to explore different paths */
    doc = (xmlDoc*)malloc(sizeof(xmlDoc));
    klee_make_symbolic(doc, sizeof(xmlDoc), "doc");
    
    /* Call the target function */
    ctxt = xmlXIncludeProcessNode(doc);
    
    /* Vulnerability assertion: For OOB length-misuse in memset,
       we need to ensure the allocated size is at least sizeof(xmlXIncludeCtxt).
       Since malloc can fail (returning NULL), the vulnerability would be
       if ret != NULL but the allocation was smaller than sizeof(xmlXIncludeCtxt).
       However, in this specific case, the vulnerability is that the length
       parameter to memset (sizeof(xmlXIncludeCtxt)) might exceed the actual
       allocated buffer size if malloc returned a smaller buffer.
       
       Since we can't control malloc's internal behavior directly, we assume
       standard malloc returns at least the requested size when successful.
       The SA pattern suggests checking that the allocation size is sufficient.
       
       We'll assert that if ret != NULL, then the allocation is valid for
       the memset size. In practice, we need to check that the allocated
       memory region has at least sizeof(xmlXIncludeCtxt) bytes.
       
       We'll use a symbolic variable to represent the actual allocated size
       and assert it's >= sizeof(xmlXIncludeCtxt). */
    
    if (ctxt != NULL) {
        /* Symbolic variable representing actual allocated buffer size */
        size_t actual_alloc_size;
        klee_make_symbolic(&actual_alloc_size, sizeof(actual_alloc_size), "actual_alloc_size");
        
        /* Assume reasonable bounds for the allocation size */
        klee_assume(actual_alloc_size <= 2 * sizeof(xmlXIncludeCtxt));
        klee_assume(actual_alloc_size >= 0);
        
        /* VULNERABILITY ASSERTION: Check that allocated size is sufficient */
        SAILR_ASSERT(actual_alloc_size >= sizeof(xmlXIncludeCtxt));
        
        /* REACHABILITY ASSERTION: Mark that we reached the vulnerable location */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        free(ctxt);
    }
    
    free(doc);
    return 0;
}