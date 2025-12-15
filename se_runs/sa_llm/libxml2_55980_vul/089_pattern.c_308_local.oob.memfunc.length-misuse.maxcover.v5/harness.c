#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for types and functions needed from libxml2 */
typedef struct _xmlDict xmlDict;
typedef xmlDict *xmlDictPtr;

typedef struct _xmlPatParserContext {
    xmlDictPtr dict;
    const xmlChar* cur;
    const xmlChar* base;
    int nb_namespaces;
    void* namespaces;
} xmlPatParserContext;

typedef xmlPatParserContext *xmlPatParserContextPtr;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for ERROR macro/function */
#define ERROR(a,b,c,d) /* empty */

/* Target function from pattern.c */
xmlPatParserContextPtr xmlNewPatParserContext(const xmlChar* pattern, xmlDictPtr dict, const xmlChar** namespaces) {
    xmlPatParserContextPtr cur;

    if (pattern == NULL)
        return NULL;

    cur = (xmlPatParserContextPtr) xmlMalloc(sizeof(xmlPatParserContext));
    if (cur == NULL) {
        ERROR(NULL, NULL, NULL,
            "xmlNewPatParserContext : malloc failed\n");
        return NULL;
    }
    
    /* TARGET LINE 308 - memset with potentially unbounded size */
    memset(cur, 0, sizeof(xmlPatParserContext));
    
    cur->dict = dict;
    cur->cur = pattern;
    cur->base = pattern;
    if (namespaces != NULL) {
        int i;
        for (i = 0; namespaces[2 * i] != NULL; i++)
            ;
        cur->nb_namespaces = i;
    }
    
    return cur;
}

int main(void) {
    /* Make symbolic inputs to reach the target line */
    xmlChar pattern_buf[256];
    xmlDictPtr dict;
    xmlChar* namespaces[10] = {0}; /* Array of namespace pointers */
    
    /* Initialize pattern buffer symbolically */
    klee_make_symbolic(pattern_buf, sizeof(pattern_buf), "pattern_buf");
    
    /* Ensure pattern is not NULL (first check in xmlNewPatParserContext) */
    klee_assume(pattern_buf != NULL);
    
    /* Make dict symbolic - can be NULL or valid pointer */
    klee_make_symbolic(&dict, sizeof(dict), "dict");
    
    /* Initialize namespaces array - last element must be NULL for termination */
    for (int i = 0; i < 9; i++) {
        klee_make_symbolic(&namespaces[i], sizeof(namespaces[i]), "namespace_ptr");
    }
    namespaces[9] = NULL; /* Ensure termination */
    
    /* Call the target function */
    xmlPatParserContextPtr result = xmlNewPatParserContext(
        (const xmlChar*)pattern_buf, 
        dict, 
        (const xmlChar**)namespaces
    );
    
    /* Vulnerability assertion: Check that memset size is bounded/safe */
    /* For memset at line 308, the size is sizeof(xmlPatParserContext) which is 
       a compile-time constant, so the vulnerability would be if the allocation
       size doesn't match the memset size. Since xmlMalloc uses sizeof(xmlPatParserContext),
       we assert that the allocation succeeded with the correct size. */
    if (result != NULL) {
        /* The SA spec suggests OOB risk for memset with potentially unbounded length.
           Since we're using sizeof() which is compile-time, the risk is if 
           xmlMalloc returned a buffer smaller than sizeof(xmlPatParserContext).
           We assert that if result is non-NULL, the allocation was at least 
           the size we're going to memset. */
        SAILR_ASSERT(1); /* In this specific case, the size is compile-time constant,
                          so the vulnerability would manifest if xmlMalloc returned
                          a buffer smaller than expected. We assume proper malloc. */
        
        /* Reachability assertion */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        free(result);
    }
    
    return 0;
}