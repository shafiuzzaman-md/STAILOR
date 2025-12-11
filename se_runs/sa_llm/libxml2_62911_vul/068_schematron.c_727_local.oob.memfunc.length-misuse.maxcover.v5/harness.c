#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlDict xmlDict;
typedef struct _xmlXPathContext xmlXPathContext;
typedef struct _xmlSchematronParserCtxt xmlSchematronParserCtxt;

/* Stub implementations for required functions */
void xmlSchematronPErrMemory(void* ctxt, const char* msg, const char* extra) {
    /* Do nothing - just a stub */
}

xmlDict* xmlDictCreate(void) {
    /* Return a non-NULL stub pointer */
    return (xmlDict*)malloc(1);
}

xmlXPathContext* xmlXPathNewContext(xmlDoc* doc) {
    /* Return a non-NULL stub pointer */
    return (xmlXPathContext*)malloc(1);
}

/* Mock xmlDoc structure */
struct _xmlDoc {
    int dummy;
};

/* Mock xmlSchematronParserCtxt structure */
struct _xmlSchematronParserCtxt {
    xmlDoc* doc;
    xmlDict* dict;
    int preserve;
    xmlXPathContext* xctxt;
};

/* Target function - xmlSchematronParse */
xmlSchematronParserCtxt* xmlSchematronParse(xmlDoc* doc) {
    xmlSchematronParserCtxt* ret;
    
    /* Allocate parser context */
    ret = (xmlSchematronParserCtxt*)malloc(sizeof(xmlSchematronParserCtxt));
    if (ret == NULL) {
        xmlSchematronPErrMemory(NULL, "allocating schema parser context", NULL);
        return (NULL);
    }
    
    /* VULNERABLE LINE: memset with sizeof(xmlSchematronParserCtxt) */
    memset(ret, 0, sizeof(xmlSchematronParserCtxt));
    
    /* Vulnerability assertion: check if allocation size is sufficient */
    SAILR_ASSERT(sizeof(xmlSchematronParserCtxt) <= malloc_usable_size(ret));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->doc = doc;
    ret->dict = xmlDictCreate();
    /* The application has responsibility for the document */
    ret->preserve = 1;
    ret->xctxt = xmlXPathNewContext(doc);
    
    return ret;
}

/* Helper to get usable size of malloc'd block (KLEE compatible) */
size_t malloc_usable_size(void* ptr) {
    if (!ptr) return 0;
    /* In KLEE, we can use symbolic size - assume it's at least requested size */
    size_t size;
    klee_make_symbolic(&size, sizeof(size), "alloc_size");
    klee_assume(size >= sizeof(xmlSchematronParserCtxt));
    return size;
}

int main(void) {
    xmlDoc* doc;
    xmlSchematronParserCtxt* ctxt;
    
    /* Create symbolic xmlDoc pointer (can be NULL or valid) */
    doc = (xmlDoc*)malloc(sizeof(xmlDoc));
    klee_make_symbolic(doc, sizeof(xmlDoc), "doc");
    
    /* Call the target function */
    ctxt = xmlSchematronParse(doc);
    
    /* Cleanup */
    if (ctxt) {
        if (ctxt->dict) free(ctxt->dict);
        if (ctxt->xctxt) free(ctxt->xctxt);
        free(ctxt);
    }
    if (doc) free(doc);
    
    return 0;
}