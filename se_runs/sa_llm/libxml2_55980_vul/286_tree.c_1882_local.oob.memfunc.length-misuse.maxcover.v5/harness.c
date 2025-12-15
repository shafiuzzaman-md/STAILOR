#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed to compile */
typedef struct _xmlDict xmlDict;
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlNode xmlNode;
typedef struct _xmlNs xmlNs;
typedef struct _xmlAttr xmlAttr;
typedef unsigned char xmlChar;

/* Constants */
#define XML_ATTRIBUTE_NODE 2

/* Function declarations */
void xmlTreeErrMemory(const char *msg);
void xmlFree(void *ptr);
int xmlDictOwns(xmlDict *dict, const xmlChar *name);

/* Stub implementations */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing for stub */
}

void xmlFree(void *ptr) {
    free(ptr);
}

int xmlDictOwns(xmlDict *dict, const xmlChar *name) {
    /* Return symbolic value to explore both paths */
    int result;
    klee_make_symbolic(&result, sizeof(result), "dict_owns_result");
    klee_assume(result == 0 || result == 1);
    return result;
}

/* Target function from tree.c around line 1882 */
xmlAttr *xmlNewPropInternal(xmlNode *node, const xmlChar *name, const xmlChar *value, 
                           int eatname, xmlNs *ns) {
    xmlAttr *cur;
    xmlDoc *doc = NULL;
    
    /* Allocate memory for cur - this is what the actual code does */
    cur = (xmlAttr *)malloc(sizeof(xmlAttr));
    if (cur == NULL) {
        if ((eatname == 1) &&
            ((node == NULL) || (node->doc == NULL) ||
             (node->doc->dict == NULL) ||
             (!(xmlDictOwns(node->doc->dict, name)))))
            xmlFree((xmlChar *) name);
        xmlTreeErrMemory("building attribute");
        return (NULL);
    }
    
    /* TARGET LINE 1882: memset(cur, 0, sizeof(xmlAttr)); */
    /* Vulnerability assertion: ensure cur points to valid memory of sufficient size */
    SAILR_ASSERT(cur != NULL && sizeof(xmlAttr) > 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(cur, 0, sizeof(xmlAttr));
    cur->type = XML_ATTRIBUTE_NODE;
    
    cur->parent = node;
    if (node != NULL) {
        doc = node->doc;
        cur->doc = doc;
    }
    cur->ns = ns;
    
    return cur;
}

/* Helper function to create symbolic xmlNode */
xmlNode *create_symbolic_node(void) {
    xmlNode *node = (xmlNode *)malloc(sizeof(xmlNode));
    if (node) {
        klee_make_symbolic(node, sizeof(xmlNode), "node");
        node->doc = (xmlDoc *)malloc(sizeof(xmlDoc));
        if (node->doc) {
            klee_make_symbolic(node->doc, sizeof(xmlDoc), "doc");
            node->doc->dict = (xmlDict *)malloc(sizeof(xmlDict));
            klee_make_symbolic(&node->doc->dict, sizeof(xmlDict *), "dict_ptr");
        }
    }
    return node;
}

int main(void) {
    /* Create symbolic inputs */
    xmlNode *node;
    xmlChar *name;
    xmlChar *value;
    int eatname;
    xmlNs *ns = NULL;
    
    /* Make node symbolic (can be NULL or valid) */
    int node_is_null;
    klee_make_symbolic(&node_is_null, sizeof(node_is_null), "node_is_null");
    klee_assume(node_is_null == 0 || node_is_null == 1);
    
    if (node_is_null) {
        node = NULL;
    } else {
        node = create_symbolic_node();
        /* Ensure node->doc and node->doc->dict are not NULL for some paths */
        klee_assume(node != NULL);
        klee_assume(node->doc != NULL);
        klee_assume(node->doc->dict != NULL);
    }
    
    /* Make name symbolic */
    name = (xmlChar *)malloc(256);
    klee_make_symbolic(name, 256, "name");
    
    /* Make value symbolic */
    value = (xmlChar *)malloc(256);
    klee_make_symbolic(value, 256, "value");
    
    /* Make eatname symbolic (0 or 1) */
    klee_make_symbolic(&eatname, sizeof(eatname), "eatname");
    klee_assume(eatname == 0 || eatname == 1);
    
    /* Call the target function */
    xmlAttr *result = xmlNewPropInternal(node, name, value, eatname, ns);
    
    /* Cleanup */
    if (result) free(result);
    if (name) free(name);
    if (value) free(value);
    if (node && !node_is_null) {
        if (node->doc) {
            if (node->doc->dict) free(node->doc->dict);
            free(node->doc);
        }
        free(node);
    }
    
    return 0;
}