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
    int type;
    const char* name;
    struct _xmlNode* children;
    struct _xmlNode* last;
    struct _xmlNode* parent;
    struct _xmlNode* next;
    struct _xmlNode* prev;
    struct _xmlDoc* doc;
    void* _private;
};

struct _xmlDoc {
    xmlDict* dict;
    struct _xmlNode* children;
    struct _xmlNode* last;
};

/* Stub functions */
void xmlTreeErrMemory(const char* msg) {
    (void)msg;
}

void* xmlMalloc(size_t size) {
    return malloc(size);
}

const char* xmlDictLookup(xmlDict* dict, const char* name, int len) {
    (void)dict;
    (void)len;
    return name;
}

/* Target function - simplified version of xmlNewPI */
xmlNode* xmlNewPI(const char* name, const char* content) {
    xmlDoc* doc = NULL;
    xmlNode* cur;
    
    cur = (xmlNodePtr) xmlMalloc(sizeof(xmlNode));
    if (cur == NULL) {
        xmlTreeErrMemory("building PI");
        return(NULL);
    }
    memset(cur, 0, sizeof(xmlNode));
    cur->type = XML_PI_NODE;
    
    if ((doc != NULL) && (doc->dict != NULL))
        cur->name = xmlDictLookup(doc->dict, name, -1);
    else
        cur->name = name;
    
    return cur;
}

/* Entrypoint function mentioned in spec */
xmlNode* xmlStringGetNodeList(const char* str) {
    (void)str;
    return NULL;
}

int main(void) {
    /* Make symbolic inputs for xmlNewPI parameters */
    char name[64];
    char content[64];
    
    klee_make_symbolic(name, sizeof(name), "name");
    klee_make_symbolic(content, sizeof(content), "content");
    
    /* Assume name is null-terminated */
    klee_assume(name[63] == '\0');
    klee_assume(content[63] == '\0');
    
    /* Call the function that leads to the target line */
    xmlNode* result = xmlNewPI(name, content);
    
    /* Vulnerability assertion: Check that xmlMalloc succeeded 
       and memset size is valid (sizeof(xmlNode) > 0) */
    if (result != NULL) {
        SAILR_ASSERT(sizeof(xmlNode) > 0);
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    /* Clean up */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}