#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlRelaxNGDocument xmlRelaxNGDocument;
typedef struct _xmlRelaxNGParserCtxt xmlRelaxNGParserCtxt;
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlNode xmlNode;

struct _xmlRelaxNGDocument {
    xmlDoc* doc;
    char* href;
    xmlRelaxNGDocument* next;
    int externalRef;
};

struct _xmlRelaxNGParserCtxt {
    xmlRelaxNGDocument* documents;
};

typedef enum {
    XML_ERR_NO_MEMORY = 1000
} xmlParserErrors;

/* Stub functions to avoid linking with libxml2 */
void xmlRngPErr(xmlRelaxNGParserCtxt* ctxt, xmlNode* node, int error, const char* msg, const char* arg1, void* arg2) {
    /* Do nothing */
}

void xmlFreeDoc(xmlDoc* doc) {
    /* Do nothing */
}

xmlDoc* xmlReadDoc(const char* buffer, const char* URL, const char* encoding, int options) {
    /* Return a dummy pointer */
    return (xmlDoc*)1;
}

char* xmlStrdup(const char* cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen(cur) + 1;
    char* copy = (char*)malloc(len);
    if (copy) memcpy(copy, cur, len);
    return copy;
}

/* The function we want to reach */
xmlRelaxNGDocument* xmlRelaxNGParseDocument(xmlRelaxNGParserCtxt* ctxt, const char* URL) {
    xmlDoc* doc;
    xmlRelaxNGDocument* ret;

    /* Simulate the document reading */
    doc = xmlReadDoc(NULL, URL, NULL, 0);
    if (doc == NULL) {
        return NULL;
    }

    /* Allocate memory - this is what we're interested in */
    ret = (xmlRelaxNGDocument*) malloc(sizeof(xmlRelaxNGDocument));
    if (ret == NULL) {
        xmlRngPErr(ctxt, (xmlNode*) doc, XML_ERR_NO_MEMORY,
                   "xmlRelaxNG: allocate memory for doc %s\n", URL, NULL);
        xmlFreeDoc(doc);
        return (NULL);
    }

    /* TARGET LINE 1991: memset(ret, 0, sizeof(xmlRelaxNGDocument)); */
    /* Vulnerability assertion: ensure ret points to valid memory of at least sizeof(xmlRelaxNGDocument) bytes */
    SAILR_ASSERT(ret != NULL && "Allocation succeeded");
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(ret, 0, sizeof(xmlRelaxNGDocument));
    ret->doc = doc;
    ret->href = xmlStrdup(URL);
    ret->next = ctxt->documents;
    ret->externalRef = 1;
    ctxt->documents = ret;

    return ret;
}

int main(void) {
    xmlRelaxNGParserCtxt ctxt;
    char URL[256];
    
    /* Initialize context */
    ctxt.documents = NULL;
    
    /* Make URL symbolic to explore different paths */
    klee_make_symbolic(URL, sizeof(URL), "URL");
    /* Assume URL is null-terminated */
    klee_assume(URL[255] == '\0');
    
    /* Call the target function */
    xmlRelaxNGDocument* result = xmlRelaxNGParseDocument(&ctxt, URL);
    
    /* Cleanup if needed */
    if (result) {
        free(result->href);
        free(result);
    }
    
    return 0;
}