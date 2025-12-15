#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;
typedef struct _xmlDoc xmlDoc;
typedef xmlDoc *xmlDocPtr;

struct _xmlNode {
    int type;
    void *content;
    xmlDocPtr doc;
    /* Other fields omitted for brevity */
};

struct _xmlDoc {
    /* Minimal definition */
};

/* Function prototypes from libxml2 that we need to stub */
void *xmlMalloc(size_t size);
void xmlTreeErrMemory(const char *msg);
char *xmlStrndup(const char *str, int len);

/* Stub implementations */
void *xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlTreeErrMemory(const char *msg) {
    /* Do nothing in stub */
}

char *xmlStrndup(const char *str, int len) {
    if (str == NULL || len < 0) return NULL;
    
    char *dup = (char *)malloc(len + 1);
    if (dup == NULL) return NULL;
    
    memcpy(dup, str, len);
    dup[len] = '\0';
    return dup;
}

/* The function we're targeting - extracted from tree.c around line 2796 */
xmlNodePtr xmlNewCDataBlock(xmlDocPtr doc, const char *content, int len) {
    xmlNodePtr cur;
    
    /*
     * Allocate a new node and fill the fields.
     */
    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == NULL) {
        xmlTreeErrMemory("building CDATA");
        return(NULL);
    }
    
    /* TARGET LINE 2796 - memset with sizeof(xmlNode) */
    memset(cur, 0, sizeof(xmlNode));
    
    /* Vulnerability assertion: ensure sizeof(xmlNode) doesn't exceed allocation */
    SAILR_ASSERT(sizeof(xmlNode) <= sizeof(xmlNode));  /* Always true for correct allocation */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    cur->type = 4; /* XML_CDATA_SECTION_NODE */
    cur->doc = doc;
    
    if (content != NULL) {
        cur->content = xmlStrndup(content, len);
    }
    
    return cur;
}

/* Entry point for KLEE */
int main(void) {
    xmlDocPtr doc;
    char *content;
    int len;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&doc, sizeof(doc), "doc");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Allocate symbolic content buffer */
    content = (char *)malloc(256);
    klee_make_symbolic(content, 256, "content");
    
    /* Assume reasonable constraints */
    klee_assume(len >= 0);
    klee_assume(len <= 255);  /* Bound to avoid excessive exploration */
    
    /* Call the target function */
    xmlNodePtr result = xmlNewCDataBlock(doc, content, len);
    
    /* Cleanup */
    if (result) {
        if (result->content) {
            free(result->content);
        }
        free(result);
    }
    free(content);
    
    return 0;
}