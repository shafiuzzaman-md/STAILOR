#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef unsigned char xmlChar;
typedef struct _xmlNode xmlNode;
typedef struct _xmlParserCtxt xmlParserCtxt;

struct _xmlNode {
    xmlChar *content;
    struct _xmlNode *children;
    struct _xmlNode *next;
    struct _xmlNode *prev;
    struct _xmlNode *parent;
    int type;
};

struct _xmlParserCtxt {
    xmlNode *node;
    int nodemem;
    int nodelen;
    void *userData;
    int errNo;
};

/* Stub functions to avoid linking with libxml2 */
void xmlSAX2ErrMemory(xmlParserCtxt *ctxt, const char *msg) {
    (void)ctxt;
    (void)msg;
}

xmlChar *xmlRealloc(xmlChar *ptr, int size) {
    if (size <= 0) return NULL;
    return (xmlChar *)realloc(ptr, size);
}

int xmlTextConcat(xmlNode *node, const xmlChar *ch, int len) {
    (void)node;
    (void)ch;
    (void)len;
    return 0;
}

int xmlStrlen(const xmlChar *str) {
    if (!str) return 0;
    return strlen((const char *)str);
}

/* Target function from SAX2.c - simplified version to reach line 2629 */
void xmlSAX2Characters(xmlParserCtxt *ctxt, const xmlChar *ch, int len) {
    xmlNode *lastChild;
    int size;
    xmlChar *newbuf;
    int coalesceText = 0;

    if (!ctxt || !ctxt->node) return;
    
    lastChild = ctxt->node->children;
    if (!lastChild) return;
    
    if (lastChild->type == 3) { /* XML_TEXT_NODE */
        if (ctxt->nodemem == 0) {
            size = ctxt->nodelen + len + 100;
            newbuf = (xmlChar *) xmlRealloc(lastChild->content, size);
            if (newbuf == NULL) {
                xmlSAX2ErrMemory(ctxt, "xmlSAX2Characters");
                return;
            }
            ctxt->nodemem = size;
            lastChild->content = newbuf;
        }
        /* TARGET LINE 2629 */
        memcpy(&lastChild->content[ctxt->nodelen], ch, len);
        SAILR_ASSERT(ctxt->nodelen + len <= ctxt->nodemem);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        ctxt->nodelen += len;
        lastChild->content[ctxt->nodelen] = 0;
    } else if (coalesceText) {
        if (xmlTextConcat(lastChild, ch, len)) {
            xmlSAX2ErrMemory(ctxt, "xmlSAX2Characters");
        }
        if (ctxt->node->children != NULL) {
            ctxt->nodelen = xmlStrlen(lastChild->content);
        }
    }
}

int main(void) {
    xmlParserCtxt ctxt;
    xmlNode node;
    xmlNode child;
    xmlChar buffer[4096];
    int len;
    int content_size;
    
    /* Initialize context */
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_assume(ctxt.node != NULL);
    
    /* Initialize parent node */
    klee_make_symbolic(&node, sizeof(node), "node");
    node.type = 1; /* XML_ELEMENT_NODE */
    node.children = &child;
    node.content = NULL;
    ctxt.node = &node;
    
    /* Initialize child node (text node) */
    klee_make_symbolic(&child, sizeof(child), "child");
    child.type = 3; /* XML_TEXT_NODE */
    child.parent = &node;
    child.children = NULL;
    child.next = NULL;
    child.prev = NULL;
    
    /* Make content size symbolic but bounded */
    klee_make_symbolic(&content_size, sizeof(content_size), "content_size");
    klee_assume(content_size >= 0 && content_size < 4096);
    child.content = (xmlChar *)malloc(content_size + 1);
    if (child.content && content_size > 0) {
        klee_make_symbolic(child.content, content_size, "child_content");
        child.content[content_size] = 0;
    }
    
    /* Make nodemem and nodelen symbolic */
    klee_make_symbolic(&ctxt.nodemem, sizeof(ctxt.nodemem), "nodemem");
    klee_make_symbolic(&ctxt.nodelen, sizeof(ctxt.nodelen), "nodelen");
    
    /* Constrain values to plausible ranges */
    klee_assume(ctxt.nodemem >= 0 && ctxt.nodemem < 65536);
    klee_assume(ctxt.nodelen >= 0 && ctxt.nodelen < ctxt.nodemem);
    
    /* Make input buffer and length symbolic */
    klee_make_symbolic(buffer, sizeof(buffer), "buffer");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0 && len < 4096);
    
    /* Ensure we take the first branch (text node) */
    ctxt.nodemem = content_size; /* Use content_size as initial allocation */
    
    /* Call the target function */
    xmlSAX2Characters(&ctxt, buffer, len);
    
    /* Cleanup */
    if (child.content) free(child.content);
    
    return 0;
}