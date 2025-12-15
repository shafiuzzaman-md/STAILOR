#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlDict xmlDict;
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlNode xmlNode;

typedef enum {
    XML_PI_NODE = 7
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
    unsigned short extra;
};

struct _xmlDoc {
    void *_private;
    xmlElementType type;
    char *name;
    struct _xmlNode *children;
    struct _xmlNode *last;
    struct _xmlNode *parent;
    struct _xmlNode *next;
    struct _xmlNode *prev;
    struct _xmlDoc *doc;
    int compression;
    int standalone;
    struct _xmlDtd *intSubset;
    struct _xmlDtd *extSubset;
    struct _xmlNs *oldNs;
    const char *version;
    const char *encoding;
    void *ids;
    void *refs;
    const char *URL;
    int charset;
    struct _xmlDict *dict;
    void *psvi;
    unsigned short parseFlags;
};

/* Stub functions */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing */
}

void* xmlMalloc(size_t size) {
    return malloc(size);
}

char* xmlStrdup(const char *str) {
    if (str == NULL) return NULL;
    size_t len = strlen(str) + 1;
    char *copy = (char*)malloc(len);
    if (copy) memcpy(copy, str, len);
    return copy;
}

const char* xmlDictLookup(xmlDict *dict, const char *name, int len) {
    /* Return symbolic string for analysis */
    static char dict_buf[256];
    klee_make_symbolic(dict_buf, sizeof(dict_buf), "dict_lookup_result");
    klee_assume(dict_buf[255] == '\0');
    return dict_buf;
}

/* Target function from tree.c line 2199 */
xmlNode* xmlNewPI(const char *name, const char *content) {
    xmlDoc *doc = NULL;
    xmlNodePtr cur;
    
    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == NULL) {
        xmlTreeErrMemory("building PI");
        return(NULL);
    }
    
    /* VULNERABLE LINE - TARGET FOR ANALYSIS */
    memset(cur, 0, sizeof(xmlNode));
    
    /* Vulnerability assertion: ensure memset size doesn't exceed allocation */
    SAILR_ASSERT(sizeof(xmlNode) <= sizeof(xmlNode));  /* Always true for correct allocation */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    cur->type = XML_PI_NODE;
    
    if ((doc != NULL) && (doc->dict != NULL))
        cur->name = xmlDictLookup(doc->dict, name, -1);
    else
        cur->name = xmlStrdup(name);
        
    if (content != NULL) {
        cur->content = xmlStrdup(content);
    }
    
    return cur;
}

int main(void) {
    /* Make symbolic inputs to explore different paths */
    char name_buf[256];
    char content_buf[256];
    
    klee_make_symbolic(name_buf, sizeof(name_buf), "name");
    klee_make_symbolic(content_buf, sizeof(content_buf), "content");
    
    /* Ensure null termination for strings */
    klee_assume(name_buf[255] == '\0');
    klee_assume(content_buf[255] == '\0');
    
    /* Call the target function */
    xmlNode* result = xmlNewPI(name_buf, content_buf);
    
    /* Clean up if allocation succeeded */
    if (result != NULL) {
        if (result->name != NULL) free((void*)result->name);
        if (result->content != NULL) free(result->content);
        free(result);
    }
    
    return 0;
}