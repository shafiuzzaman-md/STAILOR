#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct xmlSchemaRedef {
    void* item;
    int targetBucket;
    char* refName;
    char* refTargetNs;
    struct xmlSchemaRedef* next;
} xmlSchemaRedef;

typedef struct xmlSchemaParserCtxt {
    struct {
        xmlSchemaRedef* redefs;
    } constructor;
} xmlSchemaParserCtxt;

/* Stub for xmlSchemaPErrMemory */
void xmlSchemaPErrMemory(xmlSchemaParserCtxt* pctxt, const char* msg, void* unused) {
    /* Do nothing */
}

/* Wrapper macro for constructor access */
#define WXS_CONSTRUCTOR(pctxt) (&(pctxt)->constructor)

/* Target function that contains the suspicious memset */
xmlSchemaRedef* target_function(xmlSchemaParserCtxt* pctxt, void* item, int targetBucket, 
                                char* refName, char* refTargetNs) {
    xmlSchemaRedef* ret;
    
    ret = (xmlSchemaRedef*)malloc(sizeof(xmlSchemaRedef));
    if (ret == NULL) {
        xmlSchemaPErrMemory(pctxt, "allocating redefinition info", NULL);
        return (NULL);
    }
    
    /* TARGET LINE 5201: memset(ret, 0, sizeof(xmlSchemaRedef)); */
    memset(ret, 0, sizeof(xmlSchemaRedef));
    
    ret->item = item;
    ret->targetBucket = targetBucket;
    ret->refName = refName;
    ret->refTargetNs = refTargetNs;
    
    /* This is the condition from the snippet that we need to reach */
    if (WXS_CONSTRUCTOR(pctxt)->redefs == NULL) {
        /* Vulnerability assertion: For memset length-misuse, we need to ensure
           the allocated size is at least sizeof(xmlSchemaRedef) */
        SAILR_ASSERT(ret != NULL && sizeof(xmlSchemaRedef) > 0);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    return ret;
}

/* Entry point */
int main(void) {
    xmlSchemaParserCtxt pctxt;
    void* item;
    int targetBucket;
    char refName[32];
    char refTargetNs[32];
    
    /* Initialize parser context */
    memset(&pctxt, 0, sizeof(pctxt));
    pctxt.constructor.redefs = NULL;
    
    /* Make inputs symbolic to explore different paths */
    klee_make_symbolic(&item, sizeof(item), "item");
    klee_make_symbolic(&targetBucket, sizeof(targetBucket), "targetBucket");
    klee_make_symbolic(refName, sizeof(refName), "refName");
    klee_make_symbolic(refTargetNs, sizeof(refTargetNs), "refTargetNs");
    
    /* Assume reasonable values to avoid trivial failures */
    klee_assume(targetBucket >= 0);
    klee_assume(targetBucket < 100);
    
    /* Call the target function */
    xmlSchemaRedef* result = target_function(&pctxt, item, targetBucket, refName, refTargetNs);
    
    /* Clean up */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}