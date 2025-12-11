#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

typedef struct _xmlDict xmlDict;
typedef struct _xmlXPathContext xmlXPathContext;
typedef struct _xmlSchematronParserCtxt xmlSchematronParserCtxt;

struct _xmlSchematronParserCtxt {
    char *buffer;
    int size;
    xmlDict *dict;
    xmlXPathContext *xctxt;
};

xmlDict *xmlDictCreate(void) {
    xmlDict *dict = malloc(sizeof(xmlDict));
    klee_assume(dict != 0);
    return dict;
}

xmlXPathContext *xmlXPathNewContext(void *doc) {
    (void)doc;
    xmlXPathContext *ctx = malloc(sizeof(xmlXPathContext));
    klee_assume(ctx != 0);
    return ctx;
}

void xmlSchematronPErrMemory(void *ctxt, const char *msg, void *node) {
    (void)ctxt; (void)msg; (void)node;
}

xmlSchematronParserCtxt *xmlSchematronParse(char *buffer, int size) {
    xmlSchematronParserCtxt *ret;
    
    ret = malloc(sizeof(xmlSchematronParserCtxt));
    if (ret == NULL) {
        xmlSchematronPErrMemory(NULL, "allocating schema parser context", NULL);
        return (NULL);
    }
    
    memset(ret, 0, sizeof(xmlSchematronParserCtxt));
    
    ret->buffer = buffer;
    ret->size = size;
    ret->dict = xmlDictCreate();
    ret->xctxt = xmlXPathNewContext(NULL);
    
    if (ret->xctxt == NULL) {
        SAILR_ASSERT(size >= 0 && size <= sizeof(xmlSchematronParserCtxt));
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    return ret;
}

int main(void) {
    char *buffer;
    int size;
    
    buffer = malloc(1024);
    klee_assume(buffer != 0);
    
    klee_make_symbolic(&size, sizeof(size), "size");
    klee_assume(size >= 0);
    
    xmlSchematronParse(buffer, size);
    
    free(buffer);
    return 0;
}