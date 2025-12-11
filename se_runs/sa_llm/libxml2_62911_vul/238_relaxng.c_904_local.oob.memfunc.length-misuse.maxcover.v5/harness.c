#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlRelaxNGDefine xmlRelaxNGDefine;
typedef xmlRelaxNGDefine *xmlRelaxNGDefinePtr;
typedef struct _xmlRelaxNGValidCtxt xmlRelaxNGValidCtxt;
typedef struct _xmlNode xmlNode;

/* Minimal stub structures to satisfy compilation */
struct _xmlRelaxNGDefine {
    xmlNode *node;
    int depth;
    /* other fields omitted */
};

struct _xmlRelaxNGValidCtxt {
    xmlRelaxNGDefinePtr *defTab;
    int defNr;
    int defMax;
    /* other fields omitted */
};

struct _xmlNode {
    /* minimal stub */
    int dummy;
};

/* Stub functions */
void xmlRngPErrMemory(xmlRelaxNGValidCtxt *ctxt, const char *msg) {
    /* do nothing */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

/* Target function from relaxng.c */
xmlRelaxNGDefinePtr xmlRelaxNGCopyDefine(xmlRelaxNGValidCtxt *ctxt, xmlNode *node) {
    xmlRelaxNGDefinePtr ret;
    
    ret = (xmlRelaxNGDefinePtr) xmlMalloc(sizeof(xmlRelaxNGDefine));
    if (ret == NULL) {
        xmlRngPErrMemory(ctxt, "allocating define\n");
        return (NULL);
    }
    
    /* TARGET LINE 904: memset(ret, 0, sizeof(xmlRelaxNGDefine)); */
    memset(ret, 0, sizeof(xmlRelaxNGDefine));
    
    /* Vulnerability assertion: ensure we don't write beyond allocated bounds */
    SAILR_ASSERT(sizeof(xmlRelaxNGDefine) <= malloc_usable_size(ret));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ctxt->defTab[ctxt->defNr++] = ret;
    ret->node = node;
    ret->depth = -1;
    return (ret);
}

/* Entrypoint function mentioned in spec */
xmlRelaxNGValidCtxt *xmlRelaxNGCopyValidState(xmlRelaxNGValidCtxt *ctxt) {
    /* Simplified: just call xmlRelaxNGCopyDefine with symbolic node */
    xmlNode *node = (xmlNode *)malloc(sizeof(xmlNode));
    if (!node) return NULL;
    
    return (xmlRelaxNGValidCtxt *)xmlRelaxNGCopyDefine(ctxt, node);
}

int main(void) {
    /* Create symbolic context */
    xmlRelaxNGValidCtxt ctxt;
    xmlRelaxNGDefinePtr *defTab;
    int defNr, defMax;
    
    /* Make defTab symbolic with reasonable bounds */
    defTab = (xmlRelaxNGDefinePtr *)malloc(10 * sizeof(xmlRelaxNGDefinePtr));
    klee_make_symbolic(defTab, 10 * sizeof(xmlRelaxNGDefinePtr), "defTab");
    
    /* Initialize context fields */
    ctxt.defTab = defTab;
    klee_make_symbolic(&defNr, sizeof(defNr), "defNr");
    klee_make_symbolic(&defMax, sizeof(defMax), "defMax");
    
    /* Assume reasonable bounds to avoid obvious OOB in defTab access */
    klee_assume(defNr >= 0 && defNr < 10);
    klee_assume(defMax >= 10);
    ctxt.defNr = defNr;
    ctxt.defMax = defMax;
    
    /* Call the function that leads to target line */
    xmlRelaxNGCopyDefine(&ctxt, NULL);
    
    /* Cleanup */
    free(defTab);
    
    return 0;
}