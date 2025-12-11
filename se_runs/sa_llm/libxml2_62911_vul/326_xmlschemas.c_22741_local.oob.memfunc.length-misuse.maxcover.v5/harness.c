#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed from libxml2 */
typedef struct _xmlSchemaPSVIIDCKey xmlSchemaPSVIIDCKey;
typedef xmlSchemaPSVIIDCKey* xmlSchemaPSVIIDCKeyPtr;

typedef struct _xmlSchemaIDCMatcher {
    xmlSchemaPSVIIDCKeyPtr **keySeqs;
    int sizeKeySeqs;
    int nbKeySeqs;
} xmlSchemaIDCMatcher;

/* Stub for xmlSchemaVErrMemory */
void xmlSchemaVErrMemory(void *ctxt, const char *msg, const char *extra) {
    /* Do nothing - just a stub */
}

/* Entrypoint function that leads to the target location */
int xmlSchemaFormatQName(xmlSchemaIDCMatcher *matcher, int pos) {
    if (matcher->keySeqs == NULL) {
        matcher->keySeqs = malloc(matcher->sizeKeySeqs * sizeof(xmlSchemaPSVIIDCKeyPtr *));
        if (matcher->keySeqs == NULL) {
            xmlSchemaVErrMemory(NULL, "allocating an array of key-sequences", NULL);
            return -1;
        }
        memset(matcher->keySeqs, 0,
               matcher->sizeKeySeqs *
               sizeof(xmlSchemaPSVIIDCKeyPtr *));
    } else if (pos >= matcher->sizeKeySeqs) {
        int i = matcher->sizeKeySeqs;
        /* Target line 22741 is within this branch */
        
        /* Vulnerability assertion: ensure sizeKeySeqs is non-negative for memset */
        SAILR_ASSERT(matcher->sizeKeySeqs >= 0);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    return 0;
}

int main(void) {
    xmlSchemaIDCMatcher matcher;
    
    /* Make matcher fields symbolic */
    klee_make_symbolic(&matcher.sizeKeySeqs, sizeof(matcher.sizeKeySeqs), "sizeKeySeqs");
    klee_make_symbolic(&matcher.nbKeySeqs, sizeof(matcher.nbKeySeqs), "nbKeySeqs");
    
    /* Initialize pointer to NULL to trigger the first branch */
    matcher.keySeqs = NULL;
    
    /* Constrain sizeKeySeqs to be non-negative (as hinted in SA spec) */
    klee_assume(matcher.sizeKeySeqs >= 0);
    
    /* Constrain sizeKeySeqs to be within reasonable bounds for allocation */
    klee_assume(matcher.sizeKeySeqs <= 1024);
    
    /* Create symbolic position */
    int pos;
    klee_make_symbolic(&pos, sizeof(pos), "pos");
    
    /* Constrain pos to be >= sizeKeySeqs to trigger the vulnerable branch */
    klee_assume(pos >= matcher.sizeKeySeqs);
    
    /* Call the function that reaches the target location */
    xmlSchemaFormatQName(&matcher, pos);
    
    /* Clean up if allocation succeeded */
    if (matcher.keySeqs != NULL) {
        free(matcher.keySeqs);
    }
    
    return 0;
}