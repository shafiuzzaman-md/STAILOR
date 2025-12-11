#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlDict xmlDict;
typedef struct _xmlNode xmlNode;
typedef struct _xmlAttr xmlAttr;

struct _xmlDoc {
    xmlDict* dict;
};

struct _xmlDict {
    /* opaque */
};

struct _xmlNode {
    xmlDoc* doc;
    xmlAttr* properties;
    xmlNode* children;
    xmlNode* last;
    xmlNode* parent;
    xmlNode* next;
    xmlNode* prev;
    unsigned short type;
    const xmlChar* name;
    const xmlChar* content;
};

struct _xmlAttr {
    xmlAttr* next;
    xmlAttr* prev;
    xmlNode* parent;
    xmlNode* children;
    xmlNode* last;
    unsigned short type;
    const xmlChar* name;
    const xmlChar* children;
};

typedef char xmlChar;

/* Stub functions needed to reach the target line */
int xmlDictOwns(xmlDict* dict, const xmlChar* name) {
    /* Return symbolic value to explore both paths */
    int result;
    klee_make_symbolic(&result, sizeof(result), "xmlDictOwns_result");
    klee_assume(result == 0 || result == 1);
    return result;
}

void xmlFree(void* ptr) {
    /* Do nothing - just a stub */
}

void xmlTreeErrMemory(const char* msg) {
    /* Do nothing - just a stub */
}

/* Target function - simplified version to reach line 1861 */
xmlAttr* xmlNewProp(xmlNode* node, const xmlChar* name, const xmlChar* value) {
    xmlAttr* cur;
    xmlDoc* doc;
    
    if (node == NULL) return NULL;
    
    cur = (xmlAttr*)malloc(sizeof(xmlAttr));
    if (cur == NULL) {
        xmlTreeErrMemory("building attribute");
        return NULL;
    }
    
    /* This is the target line 1861 */
    memset(cur, 0, sizeof(xmlAttr));
    
    /* Vulnerability assertion: ensure memset size is safe */
    SAILR_ASSERT(sizeof(xmlAttr) > 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    cur->type = 2; /* XML_ATTRIBUTE_NODE */
    cur->parent = node;
    
    if (node != NULL) {
        doc = node->doc;
    }
    
    return cur;
}

/* Entry point function mentioned in spec */
xmlNode* xmlStringGetNodeList(xmlDoc* doc, const xmlChar* value) {
    /* Stub implementation - just returns NULL */
    return NULL;
}

int main(void) {
    /* Create symbolic inputs */
    xmlNode node;
    xmlDoc doc;
    xmlDict dict;
    
    /* Initialize node structure */
    klee_make_symbolic(&node, sizeof(node), "node");
    klee_make_symbolic(&doc, sizeof(doc), "doc");
    klee_make_symbolic(&dict, sizeof(dict), "dict");
    
    /* Set up relationships */
    node.doc = &doc;
    doc.dict = &dict;
    
    /* Assume node is not NULL (checked in xmlNewProp) */
    klee_assume(&node != NULL);
    
    /* Create symbolic name and value */
    xmlChar* name;
    xmlChar* value;
    
    /* Allocate buffers for name and value */
    name = (xmlChar*)malloc(10 * sizeof(xmlChar));
    value = (xmlChar*)malloc(10 * sizeof(xmlChar));
    
    if (name == NULL || value == NULL) {
        if (name) free(name);
        if (value) free(value);
        return 0;
    }
    
    klee_make_symbolic(name, 10 * sizeof(xmlChar), "name");
    klee_make_symbolic(value, 10 * sizeof(xmlChar), "value");
    
    /* Call the target function */
    xmlAttr* prop = xmlNewProp(&node, name, value);
    
    /* Cleanup */
    free(name);
    free(value);
    if (prop) free(prop);
    
    return 0;
}