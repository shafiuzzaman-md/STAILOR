#include <stddef.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>

#ifndef BUG_ASSERT
#define BUG_ASSERT(cond) klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define REACH_ASSERT() klee_assert(0 && "REACH_ASSERT")
#endif

/* --- Global Constants --- */
#define IN_LIBXML
#include <libxml/xmlmemory.h>
#include <libxml/HTMLparser.h>
#include <libxml/HTMLtree.h>
#include <libxml/parser.h>
#include <klee/klee.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* --- Stub Functions --- */
#ifndef __KLEE__
#include <sys/mman.h>
#include <unistd.h>
void* strict_alloc(size_t size) {
    size_t page_size = sysconf(_SC_PAGESIZE);
    size_t num_pages = (size + page_size - 1) / page_size + 1;
    size_t total_size = num_pages * page_size;
    char* base = mmap(NULL, total_size, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
    if (base == MAP_FAILED) return NULL;
    char* guard = base + (num_pages - 1) * page_size;
    mprotect(guard, page_size, PROT_NONE);
    return guard - size;
}
#endif

/* Stub xmlMalloc to control allocation size */
#define xmlMalloc stub_xmlMalloc
void* stub_xmlMalloc(size_t size) {
#ifdef __KLEE__
    return malloc(size);
#else
    return strict_alloc(size);
#endif
}

/* Stub xmlFree */
#define xmlFree stub_xmlFree
void stub_xmlFree(void *ptr) {
    free(ptr);
}

/* Stub xmlNewDocNode to return a simple node */
#define xmlNewDocNode stub_xmlNewDocNode
xmlNodePtr stub_xmlNewDocNode(xmlDocPtr doc, xmlNsPtr ns, const xmlChar *name, const xmlChar *content) {
    static xmlNode node;
    node.type = XML_ELEMENT_NODE;
    node.name = name;
    node.parent = NULL;
    node.children = NULL;
    node.last = NULL;
    node.next = NULL;
    node.prev = NULL;
    node.doc = doc;
    return &node;
}

/* Stub xmlNewProp to return a simple attribute */
#define xmlNewProp stub_xmlNewProp
xmlAttrPtr stub_xmlNewProp(xmlNodePtr node, const xmlChar *name, const xmlChar *value) {
    static xmlAttr attr;
    static xmlNode text;
    attr.type = XML_ATTRIBUTE_NODE;
    attr.name = name;
    attr.children = &text;
    attr.last = &text;
    attr.parent = node;
    text.type = XML_TEXT_NODE;
    text.content = (xmlChar*)value;
    return &attr;
}

/* Stub xmlNodeSetContent */
#define xmlNodeSetContent stub_xmlNodeSetContent
void stub_xmlNodeSetContent(xmlNodePtr node, const xmlChar *content) {
    /* do nothing */
}

/* Stub xmlNodeAddContent */
#define xmlNodeAddContent stub_xmlNodeAddContent
int stub_xmlNodeAddContent(xmlNodePtr node, const xmlChar *content) {
    return 0;
}

/* Stub xmlAddChild */
#define xmlAddChild stub_xmlAddChild
xmlNodePtr stub_xmlAddChild(xmlNodePtr parent, xmlNodePtr cur) {
    cur->parent = parent;
    return cur;
}

/* Stub xmlAddPrevSibling */
#define xmlAddPrevSibling stub_xmlAddPrevSibling
xmlNodePtr stub_xmlAddPrevSibling(xmlNodePtr cur, xmlNodePtr elem) {
    elem->next = cur;
    return elem;
}

/* Stub xmlFreeNode */
#define xmlFreeNode stub_xmlFreeNode
void stub_xmlFreeNode(xmlNodePtr node) {
    /* do nothing */
}

/* --- Embedded Functions --- */
/* Helper to create a minimal xmlDoc with a head */
static xmlDoc* create_minimal_doc(void) {
    xmlDoc *doc = (xmlDoc*)malloc(sizeof(xmlDoc));
    if (!doc) return NULL;
    doc->type = XML_HTML_DOCUMENT_NODE;
    doc->children = NULL;
    doc->intSubset = NULL;
    doc->encoding = NULL;
    doc->compression = 0;
    
    /* Create html node */
    xmlNode *html = (xmlNode*)malloc(sizeof(xmlNode));
    html->type = XML_ELEMENT_NODE;
    html->name = (xmlChar*)"html";
    html->parent = (xmlNode*)doc;
    html->children = NULL;
    html->last = NULL;
    html->next = NULL;
    html->prev = NULL;
    html->doc = doc;
    doc->children = html;
    
    /* Create head node */
    xmlNode *head = (xmlNode*)malloc(sizeof(xmlNode));
    head->type = XML_ELEMENT_NODE;
    head->name = (xmlChar*)"head";
    head->parent = html;
    head->children = NULL;
    head->last = NULL;
    head->next = NULL;
    head->prev = NULL;
    head->doc = doc;
    html->children = head;
    
    /* Create a meta node with charset attribute */
    xmlNode *meta = (xmlNode*)malloc(sizeof(xmlNode));
    meta->type = XML_ELEMENT_NODE;
    meta->name = (xmlChar*)"meta";
    meta->parent = head;
    meta->children = NULL;
    meta->last = NULL;
    meta->next = NULL;
    meta->prev = NULL;
    meta->doc = doc;
    head->children = meta;
    
    /* Create charset attribute */
    xmlAttr *attr = (xmlAttr*)malloc(sizeof(xmlAttr));
    attr->type = XML_ATTRIBUTE_NODE;
    attr->name = (xmlChar*)"charset";
    attr->children = NULL;
    attr->last = NULL;
    attr->parent = meta;
    attr->next = NULL;
    meta->properties = attr;
    
    /* Create text node for attribute value */
    xmlNode *text = (xmlNode*)malloc(sizeof(xmlNode));
    text->type = XML_TEXT_NODE;
    text->content = (xmlChar*)"UTF-8";
    text->parent = (xmlNode*)attr;
    text->children = NULL;
    text->last = NULL;
    text->next = NULL;
    text->prev = NULL;
    text->doc = doc;
    attr->children = text;
    attr->last = text;
    
    return doc;
}

static void free_minimal_doc(xmlDoc *doc) {
    if (!doc) return;
    if (doc->children) {
        xmlNode *html = doc->children;
        if (html->children) {
            xmlNode *head = html->children;
            if (head->children) {
                xmlNode *meta = head->children;
                if (meta->properties) {
                    xmlAttr *attr = meta->properties;
                    if (attr->children) free(attr->children);
                    free(attr);
                }
                free(meta);
            }
            free(head);
        }
        free(html);
    }
    free(doc);
}

/* --- Harness --- */
int main(int argc, char **argv) {
    xmlDocPtr doc;
    char encoding_buf[256];
    size_t len;
    
    /* Create minimal document structure */
    doc = create_minimal_doc();
    if (!doc) return 0;
    
    /* Make encoding buffer symbolic */
    klee_make_symbolic(encoding_buf, sizeof(encoding_buf), "encoding_buf");
    
    /* Ensure null termination to prevent strlen OOB */
    encoding_buf[sizeof(encoding_buf) - 1] = '\0';
    
    /* Filter short strings */
    len = strlen(encoding_buf);
    if (len <= 64) {
        free_minimal_doc(doc);
        return 0;
    }
    
    /* Filter overly-long strings for performance */
    if (len >= 128) {
        free_minimal_doc(doc);
        return 0;
    }
    
    /* Call the entrypoint */
    int result = htmlSetMetaEncoding(doc, (const xmlChar*)encoding_buf);
    
    /* The bug oracle is already instrumented in the source at line 245 */
    /* We just need to reach that point */
    
    /* Clean up */
    free_minimal_doc(doc);
    
    return 0;
}