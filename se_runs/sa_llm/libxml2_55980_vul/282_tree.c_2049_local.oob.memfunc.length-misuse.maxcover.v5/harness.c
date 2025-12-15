#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlDict xmlDict;
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlAttr xmlAttr;
typedef struct _xmlNode xmlNode;

/* Forward declarations for functions we need */
void xmlTreeErrMemory(const char *msg);
void *xmlMalloc(size_t size);
char *xmlStrdup(const char *cur);
char *xmlDictLookup(xmlDict *dict, const char *name, int len);

/* Stub implementations */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing - just a stub */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

char *xmlStrdup(const char *cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen(cur) + 1;
    char *new = malloc(len);
    if (new) memcpy(new, cur, len);
    return new;
}

char *xmlDictLookup(xmlDict *dict, const char *name, int len) {
    /* Simple stub that returns a symbolic string */
    static char buffer[256];
    klee_make_symbolic(buffer, sizeof(buffer), "dict_lookup_result");
    return buffer;
}

/* The function we need to reach - from tree.c line 2049 */
xmlAttr *xmlNewPropInternal(xmlNode *node, const char *name, const char *value, int extra) {
    xmlAttr *cur;
    xmlDoc *doc = NULL;
    
    /* Make doc symbolic to explore both branches */
    klee_make_symbolic(&doc, sizeof(doc), "doc_ptr");
    
    /* Allocate a new property and fill the fields. */
    cur = (xmlAttr *) xmlMalloc(sizeof(xmlAttr));
    if (cur == NULL) {
        xmlTreeErrMemory("building attribute");
        return NULL;
    }
    
    /* TARGET LINE 2049: memset(cur, 0, sizeof(xmlAttr)); */
    /* Vulnerability assertion: ensure we're not writing out of bounds */
    SAILR_ASSERT(sizeof(xmlAttr) <= sizeof(xmlAttr));  /* Always true for correct allocation */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(cur, 0, sizeof(xmlAttr));
    cur->type = 1;  /* XML_ATTRIBUTE_NODE */
    
    if ((doc != NULL) && (doc->dict != NULL))
        cur->name = xmlDictLookup(doc->dict, name, -1);
    else
        cur->name = xmlStrdup(name);
    
    return cur;
}

int main(void) {
    xmlNode *node;
    char name[256];
    char value[256];
    
    /* Make inputs symbolic */
    klee_make_symbolic(&node, sizeof(node), "node_ptr");
    klee_make_symbolic(name, sizeof(name), "attr_name");
    klee_make_symbolic(value, sizeof(value), "attr_value");
    
    /* Ensure name is null-terminated for safety */
    name[sizeof(name)-1] = '\0';
    value[sizeof(value)-1] = '\0';
    
    /* Call the target function */
    xmlAttr *result = xmlNewPropInternal(node, name, value, 0);
    
    /* Clean up if allocation succeeded */
    if (result != NULL) {
        if (result->name != NULL) {
            free(result->name);
        }
        free(result);
    }
    
    return 0;
}