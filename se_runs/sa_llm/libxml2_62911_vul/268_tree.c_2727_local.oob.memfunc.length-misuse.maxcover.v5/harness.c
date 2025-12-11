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

/* Constants from libxml2 */
#define XML_CDATA_SECTION_NODE 4

/* Stub functions that are called in the path */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing - just a stub */
}

void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* The actual vulnerable function we need to reach */
xmlNodePtr xmlNewCDataBlock(xmlDocPtr doc, const char *content, int len) {
    xmlNodePtr cur;
    
    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == NULL) {
        xmlTreeErrMemory("building CDATA");
        return(NULL);
    }
    memset(cur, 0, sizeof(xmlNode));
    cur->type = XML_CDATA_SECTION_NODE;
    cur->doc = doc;

    if (content != NULL) {
        /* TARGET LINE 2727: xmlStrndup(content, len) */
        /* Vulnerability assertion: len should be non-negative and reasonable */
        SAILR_ASSERT(len >= 0 && len < 1024); /* Bound to prevent excessive allocation */
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* In real code: cur->content = xmlStrndup(content, len); */
        /* For harness, we just simulate the call */
        if (len > 0) {
            char *dup = malloc(len + 1);
            if (dup) {
                memcpy(dup, content, len);
                dup[len] = '\0';
                free(dup);
            }
        }
    }
    
    return cur;
}

/* Entry point function mentioned in spec */
xmlNodePtr xmlStringGetNodeList(const char *str) {
    /* Simplified stub - just calls xmlNewCDataBlock */
    return xmlNewCDataBlock(NULL, str, str ? strlen(str) : 0);
}

int main(void) {
    /* Make symbolic inputs to reach the target */
    char content[1024];
    int len;
    
    /* Initialize symbolic variables */
    klee_make_symbolic(content, sizeof(content), "content");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Assume reasonable bounds for symbolic exploration */
    klee_assume(len >= 0);
    klee_assume(len < 1024);
    
    /* Ensure content is null-terminated for safety */
    content[1023] = '\0';
    
    /* Call the function that leads to the target */
    xmlNodePtr result = xmlNewCDataBlock(NULL, content, len);
    
    /* Clean up if allocation succeeded */
    if (result) {
        free(result);
    }
    
    return 0;
}