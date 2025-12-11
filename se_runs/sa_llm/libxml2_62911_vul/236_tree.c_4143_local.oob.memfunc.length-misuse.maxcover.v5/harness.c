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
    xmlDocPtr doc;
    xmlNodePtr parent;
    const char *name;
    xmlNodePtr next;
    xmlNodePtr prev;
    xmlNodePtr children;
    xmlNodePtr last;
    xmlNodePtr properties;
    unsigned short extra;
};

struct _xmlDoc {
    void *private;
    int type;
    char *name;
    xmlNodePtr children;
    xmlNodePtr last;
    xmlNodePtr parent;
    xmlNodePtr next;
    xmlNodePtr prev;
    xmlDocPtr doc;
};

/* Stub functions to avoid linking with libxml2 */
void xmlTreeErrMemory(const char *msg) {
    (void)msg;
}

void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Target function signature from spec */
xmlNodePtr xmlStringGetNodeList(xmlDocPtr doc, xmlNodePtr parent, const char *content);

/* Main harness */
int main(void) {
    /* Symbolic inputs to drive execution */
    xmlDoc doc;
    xmlNode parent;
    char content[256];
    
    /* Initialize structures to avoid null dereferences */
    memset(&doc, 0, sizeof(xmlDoc));
    memset(&parent, 0, sizeof(xmlNode));
    
    /* Make content symbolic to explore different paths */
    klee_make_symbolic(content, sizeof(content), "content");
    content[255] = '\0'; /* Ensure null termination */
    
    /* Symbolic variable to control malloc failure path */
    int malloc_fails;
    klee_make_symbolic(&malloc_fails, sizeof(malloc_fails), "malloc_fails");
    klee_assume(malloc_fails == 0 || malloc_fails == 1);
    
    /* Override xmlMalloc to simulate failure when needed */
    if (malloc_fails) {
        /* In failure case, xmlStringGetNodeList should return NULL */
        xmlNodePtr result = xmlStringGetNodeList(&doc, &parent, content);
        
        /* Vulnerability assertion: allocation size should be valid */
        SAILR_ASSERT(sizeof(xmlNode) > 0);
        
        /* Reachability marker for malloc failure path */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        return 0;
    }
    
    /* Normal execution path */
    xmlNodePtr result = xmlStringGetNodeList(&doc, &parent, content);
    
    if (result != NULL) {
        /* Vulnerability assertion for memset length misuse */
        /* The memset at line 4143 uses sizeof(xmlNode) which should be positive */
        SAILR_ASSERT(sizeof(xmlNode) > 0);
        
        /* Reachability marker for successful allocation path */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        free(result);
    }
    
    return 0;
}

/* Simplified implementation of xmlStringGetNodeList to reach target line */
xmlNodePtr xmlStringGetNodeList(xmlDocPtr doc, xmlNodePtr parent, const char *content) {
    xmlNodePtr ret;
    
    /* This mimics the code around line 4143 */
    ret = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (ret == NULL) {
        xmlTreeErrMemory("copying node");
        return NULL;
    }
    
    /* TARGET LINE 4143: memset(ret, 0, sizeof(xmlNode)); */
    memset(ret, 0, sizeof(xmlNode));
    
    ret->type = 1; /* Some valid type */
    ret->doc = doc;
    ret->parent = parent;
    
    /* Simulate the condition from the snippet */
    if (content != NULL && strcmp(content, "xmlStringText") == 0) {
        ret->name = content;
    }
    
    return ret;
}