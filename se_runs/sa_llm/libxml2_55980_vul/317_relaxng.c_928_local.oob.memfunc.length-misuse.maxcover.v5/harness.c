#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlRelaxNGDefine xmlRelaxNGDefine;
typedef xmlRelaxNGDefine *xmlRelaxNGDefinePtr;

typedef struct _xmlRelaxNGParserCtxt xmlRelaxNGParserCtxt;
struct _xmlRelaxNGParserCtxt {
    xmlRelaxNGDefinePtr *defTab;
    int defNr;
    int defMax;
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlRngPErrMemory */
void xmlRngPErrMemory(xmlRelaxNGParserCtxt* ctxt, const char* msg) {
    (void)ctxt;
    (void)msg;
}

/* Target function from relaxng.c line 928 context */
static xmlRelaxNGDefinePtr xmlRelaxNGNewDefine(xmlRelaxNGParserCtxt* ctxt, void* node) {
    xmlRelaxNGDefinePtr ret;
    
    /* Simulate potential array expansion logic before line 928 */
    if (ctxt->defNr >= ctxt->defMax) {
        int newMax = (ctxt->defMax == 0) ? 4 : ctxt->defMax * 2;
        xmlRelaxNGDefinePtr* tmp = (xmlRelaxNGDefinePtr*)realloc(ctxt->defTab, 
                                                                 newMax * sizeof(xmlRelaxNGDefinePtr));
        if (tmp == NULL) {
            xmlRngPErrMemory(ctxt, "allocating define table\n");
            return NULL;
        }
        ctxt->defTab = tmp;
        ctxt->defMax = newMax;
    }
    
    ret = (xmlRelaxNGDefinePtr) xmlMalloc(sizeof(xmlRelaxNGDefine));
    if (ret == NULL) {
        xmlRngPErrMemory(ctxt, "allocating define\n");
        return (NULL);
    }
    
    /* VULNERABLE LINE: memset(ret, 0, sizeof(xmlRelaxNGDefine)); */
    /* Vulnerability assertion: ensure the allocated size is at least sizeof(xmlRelaxNGDefine) */
    SAILR_ASSERT(sizeof(xmlRelaxNGDefine) <= malloc_usable_size(ret));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(ret, 0, sizeof(xmlRelaxNGDefine));
    ctxt->defTab[ctxt->defNr++] = ret;
    ret->node = node;
    ret->depth = -1;
    return (ret);
}

/* Helper to get usable size of allocation (simulated for KLEE) */
size_t malloc_usable_size(void* ptr) {
    if (!ptr) return 0;
    /* In symbolic execution, we'll treat this symbolically */
    size_t size;
    klee_make_symbolic(&size, sizeof(size), "alloc_size");
    klee_assume(size >= sizeof(xmlRelaxNGDefine)); /* Assume at least requested size */
    return size;
}

int main(void) {
    xmlRelaxNGParserCtxt ctxt;
    void* dummy_node = NULL;
    
    /* Initialize parser context symbolically */
    klee_make_symbolic(&ctxt.defNr, sizeof(ctxt.defNr), "defNr");
    klee_make_symbolic(&ctxt.defMax, sizeof(ctxt.defMax), "defMax");
    
    /* Assume reasonable bounds for symbolic values */
    klee_assume(ctxt.defNr >= 0);
    klee_assume(ctxt.defNr < 1000);
    klee_assume(ctxt.defMax >= 0);
    klee_assume(ctxt.defMax < 1000);
    
    /* Allocate definition table if needed */
    if (ctxt.defMax > 0) {
        ctxt.defTab = (xmlRelaxNGDefinePtr*)malloc(ctxt.defMax * sizeof(xmlRelaxNGDefinePtr));
        klee_assume(ctxt.defTab != NULL);
    } else {
        ctxt.defTab = NULL;
    }
    
    /* Call the target function */
    xmlRelaxNGDefinePtr result = xmlRelaxNGNewDefine(&ctxt, dummy_node);
    
    /* Cleanup */
    if (result) free(result);
    if (ctxt.defTab) free(ctxt.defTab);
    
    return 0;
}