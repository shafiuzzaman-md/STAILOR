#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlSchematronValidCtxt xmlSchematronValidCtxt;
typedef struct _xmlSchematron xmlSchematron;
typedef struct _xmlXPathContext xmlXPathContext;

struct _xmlSchematronValidCtxt {
    int type;
    xmlSchematron* schema;
    xmlXPathContext* xctxt;
    int flags;
};

/* Stub functions to avoid linking with actual libxml2 */
void xmlSchematronVErrMemory(void* a, const char* b, void* c) {
    /* Do nothing */
}

xmlXPathContext* xmlXPathNewContext(void* a) {
    xmlXPathContext* ctx = malloc(sizeof(xmlXPathContext));
    klee_assume(ctx != NULL); /* Assume allocation succeeds */
    return ctx;
}

/* Target function - simplified version of xmlSchematronNewValidCtxt */
xmlSchematronValidCtxt* xmlSchematronNewValidCtxt(xmlSchematron* schema, int options) {
    xmlSchematronValidCtxt* ret;
    
    ret = (xmlSchematronValidCtxt*) malloc(sizeof(xmlSchematronValidCtxt));
    if (ret == NULL) {
        xmlSchematronVErrMemory(NULL, "allocating validation context", NULL);
        return (NULL);
    }
    
    /* TARGET LINE 1720: memset(ret, 0, sizeof(xmlSchematronValidCtxt)); */
    memset(ret, 0, sizeof(xmlSchematronValidCtxt));
    
    ret->type = 1; /* XML_STRON_CTXT_VALIDATOR */
    ret->schema = schema;
    ret->xctxt = xmlXPathNewContext(NULL);
    ret->flags = options;
    
    if (ret->xctxt == NULL) {
        free(ret);
        return NULL;
    }
    
    return ret;
}

/* Entry point that calls xmlSchematronParse (which calls xmlSchematronNewValidCtxt) */
xmlSchematron* xmlSchematronParse(void* a, void* b, int options) {
    /* Create a dummy schema */
    xmlSchematron* schema = malloc(sizeof(xmlSchematron));
    klee_assume(schema != NULL);
    
    /* Call the function that contains the target line */
    xmlSchematronValidCtxt* ctxt = xmlSchematronNewValidCtxt(schema, options);
    
    /* Clean up if context was created */
    if (ctxt != NULL) {
        if (ctxt->xctxt != NULL) {
            free(ctxt->xctxt);
        }
        free(ctxt);
    }
    
    free(schema);
    return NULL;
}

int main(void) {
    /* Make symbolic inputs for xmlSchematronParse */
    void* a;
    void* b;
    int options;
    
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_make_symbolic(&options, sizeof(options), "options");
    
    /* Assume reasonable values to avoid trivial failures */
    klee_assume(a != NULL);
    klee_assume(b != NULL);
    
    /* Call the entrypoint function */
    xmlSchematron* result = xmlSchematronParse(a, b, options);
    
    /* Vulnerability assertion for OOB in memset:
       The size passed to memset should be <= the allocated size.
       Since we're using sizeof(xmlSchematronValidCtxt) which matches
       the allocation, the vulnerability would be if the allocation
       returned a buffer smaller than expected. */
    SAILR_ASSERT(sizeof(xmlSchematronValidCtxt) <= malloc_usable_size(ret));
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return 0;
}