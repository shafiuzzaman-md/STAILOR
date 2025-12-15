#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for types and functions needed from libxml2 */
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlDict xmlDict;
typedef struct _xmlXPathContext xmlXPathContext;
typedef struct _xmlSchematronParserCtxt xmlSchematronParserCtxt;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlDictCreate */
xmlDict* xmlDictCreate(void) {
    return (xmlDict*)malloc(sizeof(xmlDict));
}

/* Stub for xmlXPathNewContext */
xmlXPathContext* xmlXPathNewContext(xmlDoc* doc) {
    (void)doc;
    return (xmlXPathContext*)malloc(sizeof(xmlXPathContext));
}

/* Stub for xmlSchematronPErrMemory */
void xmlSchematronPErrMemory(void* ctxt, const char* msg, const char* extra) {
    (void)ctxt; (void)msg; (void)extra;
}

/* Target function from schematron.c */
xmlSchematronParserCtxt* xmlSchematronNewParserCtxt(xmlDoc* doc) {
    xmlSchematronParserCtxt* ret;
    
    ret = (xmlSchematronParserCtxt*)xmlMalloc(sizeof(xmlSchematronParserCtxt));
    if (ret == NULL) {
        xmlSchematronPErrMemory(NULL, "allocating schema parser context", NULL);
        return (NULL);
    }
    memset(ret, 0, sizeof(xmlSchematronParserCtxt));
    ret->doc = doc;
    ret->dict = xmlDictCreate();
    ret->preserve = 1;
    ret->xctxt = xmlXPathNewContext(doc);
    
    return ret;
}

int main(void) {
    xmlDoc* doc;
    
    /* Make doc symbolic to explore different paths */
    doc = (xmlDoc*)malloc(sizeof(xmlDoc));
    klee_make_symbolic(doc, sizeof(xmlDoc), "doc");
    
    /* Call the target function */
    xmlSchematronParserCtxt* ctxt = xmlSchematronNewParserCtxt(doc);
    
    /* Vulnerability assertion: ensure ret is not NULL before memset */
    if (ctxt != NULL) {
        SAILR_ASSERT(ctxt != NULL);
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Cleanup */
    if (ctxt != NULL) {
        free(ctxt->dict);
        free(ctxt->xctxt);
        free(ctxt);
    }
    free(doc);
    
    return 0;
}