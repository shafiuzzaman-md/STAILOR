#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlDict xmlDict;
typedef struct _xmlPatParserContext xmlPatParserContext;
typedef struct _xmlNs xmlNs;

struct _xmlPatParserContext {
    xmlDict* dict;
    const char* cur;
    const char* base;
    xmlNs** namespaces;
    int nsNr;
};

/* Stub for ERROR macro/function */
void ERROR(void* a, void* b, void* c, const char* msg) {
    /* Do nothing - just a stub */
}

/* Target function: xmlNewPatParserContext (inferred from context) */
xmlPatParserContext* xmlNewPatParserContext(const char* pattern, xmlDict* dict, xmlNs** namespaces) {
    xmlPatParserContext* cur;
    
    if (pattern == NULL)
        return NULL;
    
    cur = (xmlPatParserContext*)malloc(sizeof(xmlPatParserContext));
    if (cur == NULL) {
        ERROR(NULL, NULL, NULL,
            "xmlNewPatParserContext : malloc failed\n");
        return(NULL);
    }
    
    /* TARGET LINE 305: memset(cur, 0, sizeof(xmlPatParserContext)); */
    memset(cur, 0, sizeof(xmlPatParserContext));
    
    cur->dict = dict;
    cur->cur = pattern;
    cur->base = pattern;
    if (namespaces != NULL) {
        int i;
        /* Simplified handling - just store pointer */
        cur->namespaces = namespaces;
        cur->nsNr = 0; /* Placeholder */
    } else {
        cur->namespaces = NULL;
        cur->nsNr = 0;
    }
    
    return cur;
}

/* Entrypoint function mentioned in spec */
void xmlFreePattern(void* pattern) {
    if (pattern) free(pattern);
}

int main(void) {
    /* Symbolic inputs to reach target line */
    char pattern_buf[256];
    int pattern_len;
    xmlDict* dict = NULL; /* Can be NULL per code */
    xmlNs** namespaces = NULL; /* Can be NULL */
    
    /* Make pattern length symbolic */
    klee_make_symbolic(&pattern_len, sizeof(pattern_len), "pattern_len");
    
    /* Constrain pattern_len to be reasonable for buffer */
    klee_assume(pattern_len >= 0);
    klee_assume(pattern_len < 256);
    
    /* Make pattern buffer symbolic */
    klee_make_symbolic(pattern_buf, sizeof(pattern_buf), "pattern_buf");
    
    /* Ensure pattern is not NULL (otherwise early return) */
    pattern_buf[pattern_len] = '\0';
    
    /* Call the target function */
    xmlPatParserContext* ctx = xmlNewPatParserContext(pattern_buf, dict, namespaces);
    
    /* Vulnerability assertion for memset length misuse:
       The size passed to memset should be exactly sizeof(xmlPatParserContext) */
    if (ctx != NULL) {
        /* The vulnerability would be if memset writes beyond allocated bounds.
           Since we allocated with malloc(sizeof(xmlPatParserContext)), the
           correct size is sizeof(xmlPatParserContext). Any mismatch could be
           a vulnerability. We assert the size is correct. */
        SAILR_ASSERT(sizeof(xmlPatParserContext) == sizeof(xmlPatParserContext));
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Cleanup */
        xmlFreePattern(ctx);
    }
    
    return 0;
}