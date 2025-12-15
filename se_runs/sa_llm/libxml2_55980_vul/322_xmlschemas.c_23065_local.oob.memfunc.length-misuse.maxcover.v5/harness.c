#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed to compile the target code */
typedef struct _xmlSchemaPSVIIDCKey *xmlSchemaPSVIIDCKeyPtr;
typedef struct _xmlSchemaIDC {
    struct {
        int nbFields;
    } *def;
} xmlSchemaIDC;
typedef struct _xmlSchemaIDCMatcher {
    xmlSchemaIDC *aidc;
    xmlSchemaPSVIIDCKeyPtr **keySeqs;
} xmlSchemaIDCMatcher;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void *ptr = malloc(size);
    if (ptr == NULL) {
        return NULL;
    }
    return ptr;
}

/* Stub for xmlSchemaVErrMemory */
void xmlSchemaVErrMemory(void *ctxt, const char *msg, const char *extra) {
    /* Do nothing */
}

/* Target function that contains the vulnerable memset */
int target_function(xmlSchemaIDCMatcher *matcher, int pos) {
    xmlSchemaPSVIIDCKeyPtr *keySeq;
    xmlSchemaPSVIIDCKeyPtr key = NULL;

    if (matcher == NULL || matcher->aidc == NULL || matcher->aidc->def == NULL) {
        return -1;
    }

    keySeq = (xmlSchemaPSVIIDCKeyPtr *) xmlMalloc(
        matcher->aidc->def->nbFields *
        sizeof(xmlSchemaPSVIIDCKeyPtr));
    if (keySeq == NULL) {
        xmlSchemaVErrMemory(NULL,
            "allocating an IDC key-sequence", NULL);
        return(-1);
    }
    
    /* VULNERABLE LINE: memset with potentially unbounded size */
    memset(keySeq, 0, matcher->aidc->def->nbFields *
        sizeof(xmlSchemaPSVIIDCKeyPtr));
    
    /* Vulnerability assertion: ensure nbFields is non-negative */
    SAILR_ASSERT(matcher->aidc->def->nbFields >= 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    matcher->keySeqs[pos] = keySeq;
    
    return 0;
}

int main(void) {
    xmlSchemaIDCMatcher matcher;
    xmlSchemaIDC aidc;
    struct {
        int nbFields;
    } def;
    
    int pos;
    
    /* Make symbolic inputs */
    klee_make_symbolic(&def.nbFields, sizeof(def.nbFields), "nbFields");
    klee_make_symbolic(&pos, sizeof(pos), "pos");
    
    /* Set up the data structure */
    aidc.def = &def;
    matcher.aidc = &aidc;
    
    /* Allocate keySeqs array */
    matcher.keySeqs = (xmlSchemaPSVIIDCKeyPtr **)malloc(sizeof(xmlSchemaPSVIIDCKeyPtr *) * 10);
    if (matcher.keySeqs == NULL) {
        return 0;
    }
    
    /* Constrain inputs to avoid obvious failures */
    klee_assume(pos >= 0 && pos < 10);
    
    /* Call the target function */
    target_function(&matcher, pos);
    
    /* Cleanup */
    free(matcher.keySeqs);
    
    return 0;
}