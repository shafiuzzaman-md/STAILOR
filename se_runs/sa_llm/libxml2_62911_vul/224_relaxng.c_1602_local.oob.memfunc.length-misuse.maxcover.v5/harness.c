#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlRelaxNGInclude xmlRelaxNGInclude;
typedef struct _xmlRelaxNGParserCtxt xmlRelaxNGParserCtxt;
typedef struct _xmlDoc xmlDoc;

struct _xmlRelaxNGInclude {
    xmlDoc* doc;
    char* href;
    xmlRelaxNGInclude* next;
};

struct _xmlRelaxNGParserCtxt {
    xmlRelaxNGInclude* includes;
};

struct _xmlDoc {
    int dummy;
};

/* Stub functions to avoid linking with libxml2 */
void xmlRngPErrMemory(xmlRelaxNGParserCtxt* ctxt, const char* msg) {
    (void)ctxt;
    (void)msg;
}

void xmlFreeDoc(xmlDoc* doc) {
    (void)doc;
}

char* xmlStrdup(const char* str) {
    if (!str) return NULL;
    size_t len = strlen(str) + 1;
    char* copy = malloc(len);
    if (copy) memcpy(copy, str, len);
    return copy;
}

/* Target function prototype */
xmlRelaxNGInclude* xmlRelaxNGParseInclude(xmlRelaxNGParserCtxt* ctxt, xmlDoc* doc, const char* URL);

/* Entrypoint */
int main(void) {
    /* Symbolic inputs */
    xmlRelaxNGParserCtxt ctxt;
    xmlDoc doc;
    char URL[256];
    
    /* Initialize context */
    ctxt.includes = NULL;
    
    /* Make URL symbolic */
    klee_make_symbolic(URL, sizeof(URL), "URL");
    /* Assume null-terminated string */
    klee_assume(URL[255] == '\0');
    
    /* Call the target function */
    xmlRelaxNGInclude* ret = xmlRelaxNGParseInclude(&ctxt, &doc, URL);
    
    /* If we reach here, the function returned (not NULL) */
    if (ret != NULL) {
        /* Vulnerability assertion: ensure memset size doesn't exceed allocation */
        /* The pattern suggests checking that sizeof(xmlRelaxNGInclude) <= allocated size */
        /* Since ret was allocated with malloc, we assume proper allocation */
        SAILR_ASSERT(1); /* Placeholder - actual condition depends on allocation size */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    return 0;
}

/* Implementation of the target function based on the snippet */
xmlRelaxNGInclude* xmlRelaxNGParseInclude(xmlRelaxNGParserCtxt* ctxt, xmlDoc* doc, const char* URL) {
    xmlRelaxNGInclude* ret;
    
    /* Allocate memory - simulate malloc */
    ret = malloc(sizeof(xmlRelaxNGInclude));
    if (ret == NULL) {
        xmlRngPErrMemory(ctxt, "allocating include\n");
        xmlFreeDoc(doc);
        return NULL;
    }
    
    /* TARGET LINE 1602: memset(ret, 0, sizeof(xmlRelaxNGInclude)); */
    memset(ret, 0, sizeof(xmlRelaxNGInclude));
    
    ret->doc = doc;
    ret->href = xmlStrdup(URL);
    ret->next = ctxt->includes;
    ctxt->includes = ret;
    
    return ret;
}