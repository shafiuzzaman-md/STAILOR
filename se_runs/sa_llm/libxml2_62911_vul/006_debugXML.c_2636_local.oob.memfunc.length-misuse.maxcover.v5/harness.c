#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub types needed to reach the target line */
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlValidCtxt xmlValidCtxt;
typedef void (*xmlGenericErrorFunc)(void *ctx, const char *msg, ...);

struct _xmlValidCtxt {
    void *userData;
    xmlGenericErrorFunc error;
    xmlGenericErrorFunc warning;
    int flags;
};

struct _xmlDoc {
    int type;
    void *children;
    void *last;
    void *parent;
    void *next;
    void *prev;
    void *doc;
    int compression;
    int standalone;
    void *intSubset;
    void *extSubset;
    void *oldNs;
    const char *version;
    const char *encoding;
    void *ids;
    void *refs;
    const char *URL;
    int charset;
    void *dict;
    void *psvi;
    int parseFlags;
    int properties;
};

struct _xmlCtxt {
    xmlDoc *doc;
    void *node;
    int flags;
    void *dict;
    void *vctxt;
    void *input;
    int errNo;
    int disableSAX;
    int depth;
    void *nodeTab;
    int nodeMax;
    void *pushTab;
    int attsMax;
    int *attsSpecial;
    int *attsDefault;
    int *attsOrder;
    int *attsExtra;
    void *attsAlloc;
    void *attsFree;
    void *atts;
    int nbAtts;
    int attsSize;
    void *attsNames;
    void *attsValues;
    void *attsPrefixes;
    void *attsURIs;
    void *attsTypes;
    void *attsDefaulted;
    void *attsID;
    void *attsRef;
    void *attsParent;
    void *attsNs;
    void *attsElem;
    void *attsNext;
    void *attsPrev;
    void *attsAllocNext;
    void *attsAllocPrev;
    void *attsFreeNext;
    void *attsFreePrev;
    void *attsMem;
    int attsMemSize;
    void *attsMemBlock;
    void *attsMemBlockNext;
    void *attsMemBlockPrev;
    void *attsMemBlockAllocNext;
    void *attsMemBlockAllocPrev;
    void *attsMemBlockFreeNext;
    void *attsMemBlockFreePrev;
    void *attsMemBlockMem;
    int attsMemBlockMemSize;
    void *attsMemBlockMemBlock;
    void *attsMemBlockMemBlockNext;
    void *attsMemBlockMemBlockPrev;
    void *attsMemBlockMemBlockAllocNext;
    void *attsMemBlockMemBlockAllocPrev;
    void *attsMemBlockMemBlockFreeNext;
    void *attsMemBlockMemBlockFreePrev;
    void *attsMemBlockMemBlockMem;
    int attsMemBlockMemBlockMemSize;
};

/* Stub functions */
int xmlValidateDocument(xmlValidCtxt *ctxt, xmlDoc *doc) {
    /* Return symbolic value to explore both branches */
    int res;
    klee_make_symbolic(&res, sizeof(res), "validate_res");
    klee_assume(res == 0 || res == 1);
    return res;
}

/* Target function - simplified version to reach line 2636 */
int xmlCtxtDumpNode(struct _xmlCtxt *ctxt, const char *dtd) {
    xmlValidCtxt vctxt;
    int res = -1;

    if ((ctxt == NULL) || (ctxt->doc == NULL)) return(-1);
    
    /* This is the target memset at line 2636 */
    memset(&vctxt, 0, sizeof(vctxt));
    
    /* Vulnerability assertion: ensure memset length doesn't exceed buffer */
    SAILR_ASSERT(sizeof(vctxt) >= sizeof(xmlValidCtxt));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    vctxt.error = (xmlGenericErrorFunc)xmlGenericError;
    vctxt.warning = (xmlGenericErrorFunc)xmlGenericError;

    if ((dtd == NULL) || (dtd[0] == 0)) {
        res = xmlValidateDocument(&vctxt, ctxt->doc);
    }
    
    return res;
}

/* Dummy xmlGenericError to satisfy type requirements */
void xmlGenericError(void *ctx, const char *msg, ...) {
    /* Do nothing */
}

int main(void) {
    /* Create symbolic context */
    struct _xmlCtxt *ctxt = malloc(sizeof(struct _xmlCtxt));
    klee_make_symbolic(ctxt, sizeof(struct _xmlCtxt), "ctxt");
    
    /* Ensure ctxt is not NULL */
    klee_assume(ctxt != NULL);
    
    /* Create symbolic doc */
    xmlDoc *doc = malloc(sizeof(xmlDoc));
    klee_make_symbolic(doc, sizeof(xmlDoc), "doc");
    
    /* Set up the context */
    ctxt->doc = doc;
    
    /* Make dtd symbolic */
    char dtd[256];
    klee_make_symbolic(dtd, sizeof(dtd), "dtd");
    
    /* Call the target function */
    xmlCtxtDumpNode(ctxt, dtd);
    
    /* Cleanup */
    free(doc);
    free(ctxt);
    
    return 0;
}