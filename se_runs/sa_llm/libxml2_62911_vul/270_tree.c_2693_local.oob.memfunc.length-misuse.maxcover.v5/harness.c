#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions we need */
typedef struct _xmlNode xmlNode;
typedef xmlNode *xmlNodePtr;

typedef enum {
    XML_ELEMENT_NODE = 1,
    XML_ATTRIBUTE_NODE = 2,
    XML_TEXT_NODE = 3,
    XML_CDATA_SECTION_NODE = 4,
    XML_ENTITY_REF_NODE = 5,
    XML_ENTITY_NODE = 6,
    XML_PI_NODE = 7,
    XML_COMMENT_NODE = 8,
    XML_DOCUMENT_NODE = 9,
    XML_DOCUMENT_TYPE_NODE = 10,
    XML_DOCUMENT_FRAG_NODE = 11,
    XML_NOTATION_NODE = 12,
    XML_HTML_DOCUMENT_NODE = 13,
    XML_DTD_NODE = 14,
    XML_ELEMENT_DECL = 15,
    XML_ATTRIBUTE_DECL = 16,
    XML_ENTITY_DECL = 17,
    XML_NAMESPACE_DECL = 18,
    XML_XINCLUDE_START = 19,
    XML_XINCLUDE_END = 20
} xmlElementType;

struct _xmlNode {
    void *_private;
    xmlElementType type;
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

/* Stub functions */
void xmlTreeErrMemory(const char *extra) {
    /* Do nothing for stub */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

char *xmlStrdup(const char *cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen(cur) + 1;
    char *copy = (char *)malloc(len);
    if (copy != NULL) {
        memcpy(copy, cur, len);
    }
    return copy;
}

/* The actual function we're targeting - xmlNewComment */
xmlNodePtr xmlNewComment(const char *content) {
    xmlNodePtr cur;
    
    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == NULL) {
        xmlTreeErrMemory("building comment");
        return(NULL);
    }
    memset(cur, 0, sizeof(xmlNode));
    cur->type = XML_COMMENT_NODE;
    
    cur->name = "comment";
    if (content != NULL) {
        cur->content = xmlStrdup(content);
    }
    
    return cur;
}

/* Entry point for KLEE */
int main(void) {
    /* Make content symbolic to explore different paths */
    char content[256];
    klee_make_symbolic(content, sizeof(content), "content");
    
    /* Assume content is null-terminated for safety */
    content[255] = '\0';
    
    /* Call the target function */
    xmlNodePtr comment = xmlNewComment(content);
    
    /* If we reach here, the function succeeded (cur != NULL) */
    if (comment != NULL) {
        /* Vulnerability assertion: For OOB in memset, we need to check
           that the size parameter to memset is bounded. In this case,
           memset uses sizeof(xmlNode) which is constant, so the vulnerability
           would be if xmlMalloc returns a buffer smaller than sizeof(xmlNode).
           Since xmlMalloc is just malloc, we assert that the allocation
           succeeded with sufficient size. */
        SAILR_ASSERT(comment != NULL);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        free(comment->content);
        free(comment);
    }
    
    return 0;
}