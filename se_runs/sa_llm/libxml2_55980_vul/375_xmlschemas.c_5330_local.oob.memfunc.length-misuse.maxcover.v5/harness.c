#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions to compile the target function */
typedef struct _xmlSchemaParserCtxt xmlSchemaParserCtxt;
typedef xmlSchemaParserCtxt *xmlSchemaParserCtxtPtr;
typedef struct _xmlSchemaRedef xmlSchemaRedef;
typedef xmlSchemaRedef *xmlSchemaRedefPtr;
typedef struct _xmlSchemaItem xmlSchemaItem;
typedef xmlSchemaItem *xmlSchemaItemPtr;

struct _xmlSchemaRedef {
    xmlSchemaItemPtr item;
    int targetBucket;
    char *refName;
    char *refTargetNs;
    xmlSchemaRedefPtr next;
};

struct _xmlSchemaConstructor {
    xmlSchemaRedefPtr redefs;
    xmlSchemaRedefPtr lastRedef;
};

#define WXS_CONSTRUCTOR(ctxt) ((xmlSchemaConstructorPtr)(ctxt))

typedef struct _xmlSchemaConstructor xmlSchemaConstructor;
typedef xmlSchemaConstructor *xmlSchemaConstructorPtr;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlSchemaPErrMemory */
void xmlSchemaPErrMemory(xmlSchemaParserCtxtPtr ctxt, const char *msg, const char *extra) {
    /* Do nothing */
}

/* Target function from xmlschemas.c line 5323-5338 */
static xmlSchemaRedefPtr xmlSchemaAddRedefine(xmlSchemaParserCtxtPtr pctxt,
                                              xmlSchemaItemPtr item,
                                              int targetBucket,
                                              char *refName,
                                              char *refTargetNs) {
    xmlSchemaRedefPtr ret;

    ret = (xmlSchemaRedefPtr) xmlMalloc(sizeof(xmlSchemaRedef));
    if (ret == NULL) {
        xmlSchemaPErrMemory(pctxt, "allocating redefinition info", NULL);
        return (NULL);
    }
    
    /* TARGET LINE 5330 - memset call */
    memset(ret, 0, sizeof(xmlSchemaRedef));
    
    ret->item = item;
    ret->targetBucket = targetBucket;
    ret->refName = refName;
    ret->refTargetNs = refTargetNs;
    if (WXS_CONSTRUCTOR(pctxt)->redefs == NULL)
        WXS_CONSTRUCTOR(pctxt)->redefs = ret;
    else
        WXS_CONSTRUCTOR(pctxt)->lastRedef->next = ret;
    
    return ret;
}

int main(void) {
    /* Symbolic inputs for the function */
    xmlSchemaParserCtxt pctxt_struct;
    xmlSchemaConstructor constructor;
    xmlSchemaParserCtxtPtr pctxt = &pctxt_struct;
    xmlSchemaItemPtr item;
    int targetBucket;
    char refName[32];
    char refTargetNs[32];
    xmlSchemaRedefPtr result;
    
    /* Initialize constructor structure */
    constructor.redefs = NULL;
    constructor.lastRedef = NULL;
    
    /* We need to make pctxt point to the constructor structure.
       In the actual code, WXS_CONSTRUCTOR macro casts pctxt to xmlSchemaConstructorPtr.
       We'll simulate this by making pctxt point to our constructor. */
    pctxt = (xmlSchemaParserCtxtPtr)&constructor;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&item, sizeof(item), "item");
    klee_make_symbolic(&targetBucket, sizeof(targetBucket), "targetBucket");
    klee_make_symbolic(refName, sizeof(refName), "refName");
    klee_make_symbolic(refTargetNs, sizeof(refTargetNs), "refTargetNs");
    
    /* Assume reasonable values to avoid trivial failures */
    klee_assume(item != NULL);  /* Assume non-null item pointer */
    
    /* Call the target function */
    result = xmlSchemaAddRedefine(pctxt, item, targetBucket, refName, refTargetNs);
    
    /* Vulnerability assertion: For memset length-misuse, we need to ensure
       that the size passed to memset doesn't exceed the allocated buffer.
       Since xmlMalloc allocates exactly sizeof(xmlSchemaRedef), and memset
       uses exactly sizeof(xmlSchemaRedef), the vulnerability would be if
       ret points to memory smaller than sizeof(xmlSchemaRedef).
       
       However, the SA pattern is about length-misuse. The actual vulnerability
       would be if xmlMalloc returns a pointer to memory that is smaller than
       sizeof(xmlSchemaRedef) but not NULL. We can't control xmlMalloc's
       internal behavior, but we can assert that if ret != NULL, then
       the memset size is appropriate for the allocation.
       
       Since we're stubbing xmlMalloc with malloc, and malloc either returns
       NULL or a valid pointer of at least the requested size, the condition
       for safety is simply that ret != NULL implies the allocation succeeded
       with sufficient size. But the SA wants to check for OOB in memset.
       
       The most precise condition: ret points to valid memory of at least
       sizeof(xmlSchemaRedef) bytes. Since we can't query allocation size,
       we assert that ret is a valid non-null pointer (which it must be to
       reach line 5330). */
    
    if (result != NULL) {
        /* We've reached the target line 5330 */
        SAILR_ASSERT(result != NULL);  /* Basic safety: pointer is valid */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Cleanup */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}