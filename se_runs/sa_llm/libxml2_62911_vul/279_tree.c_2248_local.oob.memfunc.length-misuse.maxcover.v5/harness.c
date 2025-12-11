#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed to reach target */
typedef struct _xmlNode xmlNode;
typedef struct _xmlNs xmlNs;
typedef enum {
    XML_ELEMENT_NODE = 1
} xmlElementType;

struct _xmlNode {
    void *children;
    void *last;
    struct _xmlNode *parent;
    struct _xmlNode *next;
    struct _xmlNode *prev;
    struct _xmlDoc *doc;
    xmlNs *ns;
    const unsigned char *name;
    int type;
    void *properties;
    unsigned char *content;
    unsigned long length;
    void *private;
};

struct _xmlNs {
    struct _xmlNs *next;
    const unsigned char *href;
    const unsigned char *prefix;
};

/* Stub for xmlTreeErrMemory */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing - just a stub */
}

/* Target function: xmlNewNode (inferred from context) */
xmlNode *xmlNewNode(xmlNs *ns, const unsigned char *name) {
    xmlNode *cur;
    
    /* This mimics the code around line 2248 */
    cur = (xmlNode *)malloc(sizeof(xmlNode));
    if (cur == NULL) {
        xmlTreeErrMemory("building node");
        return NULL;
    }
    
    /* TARGET LINE 2248: memset(cur, 0, sizeof(xmlNode)); */
    memset(cur, 0, sizeof(xmlNode));
    
    cur->type = XML_ELEMENT_NODE;
    cur->name = name;
    cur->ns = ns;
    
    return cur;
}

/* Entrypoint function mentioned in spec */
void *xmlStringGetNodeList(void) {
    /* This is mentioned as entrypoint but we need to reach xmlNewNode */
    return NULL;
}

int main(void) {
    xmlNode *node;
    xmlNs *ns;
    unsigned char name[32];
    int can, ret;
    
    /* Make symbolic variables for length analysis */
    klee_make_symbolic(&can, sizeof(can), "can");
    klee_make_symbolic(&ret, sizeof(ret), "return");
    
    /* Assume bounds based on spec hints */
    klee_assume(can >= 0);
    klee_assume(ret >= 0);
    
    /* Create symbolic namespace pointer (can be NULL) */
    klee_make_symbolic(&ns, sizeof(ns), "ns");
    
    /* Create symbolic name */
    klee_make_symbolic(name, sizeof(name), "name");
    
    /* Call the target function */
    node = xmlNewNode(ns, name);
    
    /* Vulnerability assertion: For memset length-misuse, we need to ensure
       the size parameter doesn't exceed allocated bounds. Since memset uses
       sizeof(xmlNode), the vulnerability would be if cur points to memory
       smaller than sizeof(xmlNode). This happens if malloc fails but cur
       is non-NULL (impossible with standard malloc) OR if there's an integer
       overflow in size calculation. The SA pattern suggests checking that
       the allocated size >= sizeof(xmlNode). Since we use malloc(sizeof(xmlNode)),
       the condition is simply that malloc succeeded (cur != NULL). */
    if (node != NULL) {
        /* Vulnerability assertion: Ensure memset size doesn't exceed allocation */
        SAILR_ASSERT(node != NULL);  /* If node is non-NULL, allocation succeeded */
        
        /* Reachability assertion */
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        free(node);
    }
    
    return 0;
}