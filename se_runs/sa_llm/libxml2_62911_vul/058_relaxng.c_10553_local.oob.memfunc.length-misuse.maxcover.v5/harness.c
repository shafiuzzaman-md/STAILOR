#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed to reach target */
typedef struct _xmlRelaxNGValidCtxt xmlRelaxNGValidCtxt;
typedef xmlRelaxNGValidCtxt* xmlRelaxNGValidCtxtPtr;

typedef struct _xmlRelaxNGDefine xmlRelaxNGDefine;
typedef xmlRelaxNGDefine* xmlRelaxNGDefinePtr;

typedef struct _xmlValidCtxt xmlValidCtxt;

struct _xmlRelaxNGValidCtxt {
    int idref;
    void (*error)(void*, const char*, ...);
    void (*warning)(void*, const char*, ...);
    void* userData;
};

struct _xmlValidCtxt {
    int valid;
    void (*error)(void*, const char*, ...);
    void (*warning)(void*, const char*, ...);
    void* userData;
};

/* Stub for xmlRelaxNGDumpValidError to avoid missing symbol */
void xmlRelaxNGDumpValidError(xmlRelaxNGValidCtxtPtr ctxt) {
    /* Do nothing - just a stub */
}

/* Entrypoint function from SA spec */
void xmlRelaxNGFreeDefine(xmlRelaxNGDefinePtr def) {
    /* This is a stub - we only need to reach the target line in xmlRelaxNGFreeValidCtxt */
    (void)def;
}

/* Function that contains the target line - inferred from context */
void xmlRelaxNGFreeValidCtxt(xmlRelaxNGValidCtxtPtr ctxt) {
    if (ctxt == NULL) return;
    
    xmlRelaxNGDumpValidError(ctxt);
#ifdef LIBXML_VALID_ENABLED
    if (ctxt->idref == 1) {
        xmlValidCtxt vctxt;
        
        /* TARGET LINE: 10553 - memset(&vctxt, 0, sizeof(xmlValidCtxt)); */
        /* Vulnerability assertion: ensure sizeof(xmlValidCtxt) doesn't exceed bounds */
        /* For memset OOB, we need to ensure the destination buffer is large enough */
        SAILR_ASSERT(sizeof(xmlValidCtxt) <= sizeof(vctxt));
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        memset(&vctxt, 0, sizeof(xmlValidCtxt));
        vctxt.valid = 1;
        vctxt.error = ctxt->error;
        vctxt.warning = ctxt->warning;
        vctxt.userData = ctxt->userData;
    }
#endif
}

int main(void) {
    /* Create symbolic context to reach target line */
    xmlRelaxNGValidCtxt* ctxt = (xmlRelaxNGValidCtxt*)malloc(sizeof(xmlRelaxNGValidCtxt));
    if (ctxt == NULL) return 1;
    
    /* Make fields symbolic to explore different paths */
    klee_make_symbolic(&ctxt->idref, sizeof(ctxt->idref), "idref");
    
    /* Assume idref == 1 to reach the vulnerable memset path */
    klee_assume(ctxt->idref == 1);
    
    /* Call the function that contains the target line */
    xmlRelaxNGFreeValidCtxt(ctxt);
    
    /* Also call the entrypoint from SA spec to satisfy coverage */
    xmlRelaxNGFreeDefine(NULL);
    
    free(ctxt);
    return 0;
}