#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the target function */
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;

struct _xmlNode {
    void *private;
    int type;
    const char *name;
    struct _xmlNode *children;
    struct _xmlNode *last;
    struct _xmlNode *parent;
    struct _xmlNode *next;
    struct _xmlNode *prev;
    struct _xmlDoc *doc;
    char *content;
    struct _xmlAttr *properties;
    struct _xmlNs *ns;
    unsigned short line;
};

/* Global variables referenced in the snippet */
int __xmlRegisterCallbacks = 0;
void (*xmlRegisterNodeDefaultValue)(void) = NULL;
const char *xmlStringComment = "comment";

/* Stub functions */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

char *xmlStrdup(const char *str) {
    if (str == NULL) return NULL;
    size_t len = strlen(str) + 1;
    char *copy = (char *)malloc(len);
    if (copy) memcpy(copy, str, len);
    return copy;
}

/* Target function from tree.c:2762 */
xmlNodePtr xmlNewComment(const char *content) {
    xmlNodePtr cur;
    
    /*
     * Allocate a new node and fill the fields.
     */
    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == NULL) {
        xmlTreeErrMemory("building comment");
        return(NULL);
    }
    
    /* VULNERABLE LINE: 2762 */
    memset(cur, 0, sizeof(xmlNode));
    
    /* Vulnerability assertion for OOB memset */
    SAILR_ASSERT(sizeof(xmlNode) <= sizeof(xmlNode));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    cur->type = 8; /* XML_COMMENT_NODE */
    cur->name = xmlStringComment;
    if (content != NULL) {
        cur->content = xmlStrdup(content);
    }
    
    if ((__xmlRegisterCallbacks) && (xmlRegisterNodeDefaultValue)) {
        /* Registration callback - stub */
    }
    
    return cur;
}

/* Entry point */
int main(void) {
    char content[256];
    
    /* Make content symbolic to explore different paths */
    klee_make_symbolic(content, sizeof(content), "content");
    
    /* Ensure content is null-terminated */
    content[255] = '\0';
    
    /* Call the target function */
    xmlNodePtr result = xmlNewComment(content);
    
    /* Clean up if allocation succeeded */
    if (result != NULL) {
        if (result->content != NULL) {
            free(result->content);
        }
        free(result);
    }
    
    return 0;
}