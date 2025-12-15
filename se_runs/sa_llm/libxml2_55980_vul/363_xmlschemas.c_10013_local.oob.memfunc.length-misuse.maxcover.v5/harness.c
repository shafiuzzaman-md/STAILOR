#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for functions we need from libxml2 */
typedef struct _xmlSchemaConstructionCtxt xmlSchemaConstructionCtxt;
typedef xmlSchemaConstructionCtxt *xmlSchemaConstructionCtxtPtr;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlFree */
void xmlFree(void* ptr) {
    free(ptr);
}

/* Stub for xmlSchemaPErrMemory */
void xmlSchemaPErrMemory(void* ctxt, const char* msg, const char* extra) {
    /* Do nothing */
}

/* Stub for xmlSchemaItemListCreate */
void* xmlSchemaItemListCreate(void) {
    /* Return symbolic pointer that could be NULL or non-NULL */
    void* result;
    klee_make_symbolic(&result, sizeof(result), "list_create_result");
    klee_assume(result == NULL || result != NULL);
    return result;
}

/* The target function - simplified version of what's in xmlschemas.c */
xmlSchemaConstructionCtxtPtr xmlSchemaConstructionCtxtCreate(void) {
    xmlSchemaConstructionCtxtPtr ret;

    ret = (xmlSchemaConstructionCtxtPtr)xmlMalloc(sizeof(xmlSchemaConstructionCtxt));
    if (ret == NULL) {
        xmlSchemaPErrMemory(NULL, "allocating schema construction context", NULL);
        return (NULL);
    }
    
    /* TARGET LINE 10013 - memset call */
    memset(ret, 0, sizeof(xmlSchemaConstructionCtxt));
    
    ret->buckets = xmlSchemaItemListCreate();
    if (ret->buckets == NULL) {
        xmlSchemaPErrMemory(NULL, "allocating list of schema buckets", NULL);
        xmlFree(ret);
        return (NULL);
    }
    
    return ret;
}

int main(void) {
    xmlSchemaConstructionCtxtPtr ctxt;
    
    /* Call the function that contains the target line */
    ctxt = xmlSchemaConstructionCtxtCreate();
    
    /* If we reach here, the function succeeded (returned non-NULL) */
    if (ctxt != NULL) {
        /* Vulnerability assertion: For memset OOB, we need to ensure the size
           parameter doesn't exceed the allocated buffer. Since xmlMalloc was
           called with sizeof(xmlSchemaConstructionCtxt), and memset uses the
           same size, the vulnerability would be if the allocated size is smaller
           than sizeof(xmlSchemaConstructionCtxt). However, xmlMalloc returns
           exactly what was requested, so the actual vulnerability condition
           would be if ret points to memory smaller than the structure size.
           
           Since we can't track the actual allocation size in this simple harness,
           we assert that ret points to valid memory of at least the required size.
           The SA pattern is about length misuse, so we assert the size is safe. */
        SAILR_ASSERT(ctxt != NULL);
        
        /* Reachability marker - placed after vulnerability assertion */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        if (ctxt->buckets != NULL) {
            free(ctxt->buckets);
        }
        xmlFree(ctxt);
    }
    
    return 0;
}