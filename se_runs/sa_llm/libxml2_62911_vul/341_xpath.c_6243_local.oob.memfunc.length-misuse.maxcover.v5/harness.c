#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

typedef struct _xmlNode xmlNode;
typedef struct _xmlNs xmlNs;
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlDtd xmlDtd;
typedef struct _xmlAttr xmlAttr;
typedef struct _xmlElement xmlElement;

typedef struct _xmlXPathObject xmlXPathObject;
typedef struct _xmlXPathParserContext xmlXPathParserContext;
typedef struct _xmlXPathContext xmlXPathContext;

typedef struct _xmlNodeSet {
    int nodeNr;
    int nodeMax;
    xmlNode **nodeTab;
} xmlNodeSet;

typedef unsigned char xmlChar;

typedef enum {
    XML_ELEMENT_NODE=1,
    XML_ATTRIBUTE_NODE=2,
    XML_TEXT_NODE=3,
    XML_CDATA_SECTION_NODE=4,
    XML_ENTITY_REF_NODE=5,
    XML_ENTITY_NODE=6,
    XML_PI_NODE=7,
    XML_COMMENT_NODE=8,
    XML_DOCUMENT_NODE=9,
    XML_DOCUMENT_TYPE_NODE=10,
    XML_DOCUMENT_FRAG_NODE=11,
    XML_NOTATION_NODE=12,
    XML_HTML_DOCUMENT_NODE=13,
    XML_DTD_NODE=14,
    XML_ELEMENT_DECL=15,
    XML_ATTRIBUTE_DECL=16,
    XML_ENTITY_DECL=17,
    XML_NAMESPACE_DECL=18,
    XML_XINCLUDE_START=19,
    XML_XINCLUDE_END=20
} xmlElementType;

struct _xmlNode {
    void *_private;
    xmlElementType type;
    const xmlChar *name;
    struct _xmlNode *children;
    struct _xmlNode *last;
    struct _xmlNode *parent;
    struct _xmlNode *next;
    struct _xmlNode *prev;
    struct _xmlDoc *doc;
    xmlNs *ns;
    xmlChar *content;
    struct _xmlAttr *properties;
    xmlNs *nsDef;
    void *psvi;
    unsigned short line;
    unsigned short extra;
};

static unsigned long xmlXPathNodeValHash(xmlNode* node) {
    return 0;
}

static int xmlXPathCmpNodesExt(xmlNode* node1, xmlNode* node2,
                               xmlNodeSet* ns1, xmlNodeSet* ns2) {
    int i, j;
    unsigned long *hashs1 = NULL;
    unsigned long *hashs2 = NULL;
    xmlChar **values1 = NULL;
    xmlChar **values2 = NULL;
    int ret = 0;

    if ((ns1 == NULL) || (ns2 == NULL) ||
        (ns1->nodeNr <= 0) || (ns2->nodeNr <= 0))
        return(0);

    hashs1 = (unsigned long *) xmlMalloc(ns1->nodeNr * sizeof(unsigned long));
    if (hashs1 == NULL)
        return(0);
    hashs2 = (unsigned long *) xmlMalloc(ns2->nodeNr * sizeof(unsigned long));
    if (hashs2 == NULL) {
        xmlFree(hashs1);
        return(0);
    }
    values1 = (xmlChar **) xmlMalloc(ns1->nodeNr * sizeof(xmlChar *));
    if (values1 == NULL) {
        xmlFree(hashs1);
        xmlFree(hashs2);
        return(0);
    }
    values2 = (xmlChar **) xmlMalloc(ns2->nodeNr * sizeof(xmlChar *));
    if (values2 == NULL) {
        xmlFree(hashs1);
        xmlFree(hashs2);
        xmlFree(values1);
        return(0);
    }

    memset(values2, 0, ns2->nodeNr * sizeof(xmlChar *));
    
    SAILR_ASSERT(ns2->nodeNr * sizeof(xmlChar *) <= ns2->nodeNr * sizeof(xmlChar *));
    klee_assert(0 && "SAILR_REACH_ASSERT");

    for (i = 0; i < ns1->nodeNr; i++) {
        hashs1[i] = xmlXPathNodeValHash(ns1->nodeTab[i]);
        for (j = 0; j < ns2->nodeNr; j++) {
            if (i == 0)
                hashs2[j] = xmlXPathNodeValHash(ns2->nodeTab[j]);
        }
    }

    xmlFree(hashs1);
    xmlFree(hashs2);
    xmlFree(values1);
    xmlFree(values2);
    return ret;
}

void* xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlFree(void* ptr) {
    free(ptr);
}

int main(void) {
    xmlNode node1, node2;
    xmlNodeSet ns1, ns2;
    xmlNode* nodeTab1[10];
    xmlNode* nodeTab2[10];
    int nodeNr1, nodeNr2;

    klee_make_symbolic(&nodeNr1, sizeof(nodeNr1), "nodeNr1");
    klee_make_symbolic(&nodeNr2, sizeof(nodeNr2), "nodeNr2");

    klee_assume(nodeNr1 > 0 && nodeNr1 <= 10);
    klee_assume(nodeNr2 > 0 && nodeNr2 <= 10);

    ns1.nodeNr = nodeNr1;
    ns1.nodeTab = nodeTab1;
    ns2.nodeNr = nodeNr2;
    ns2.nodeTab = nodeTab2;

    for (int i = 0; i < nodeNr1; i++) {
        nodeTab1[i] = &node1;
    }
    for (int i = 0; i < nodeNr2; i++) {
        nodeTab2[i] = &node2;
    }

    xmlXPathCmpNodesExt(&node1, &node2, &ns1, &ns2);

    return 0;
}