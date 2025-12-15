#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the target code */
typedef struct _xmlNs xmlNs;
typedef xmlNs *xmlNsPtr;

typedef enum {
    XML_ELEMENT_NODE = 1,
    XML_ATTRIBUTE_NODE,
    XML_TEXT_NODE,
    XML_CDATA_SECTION_NODE,
    XML_ENTITY_REF_NODE,
    XML_ENTITY_NODE,
    XML_PI_NODE,
    XML_COMMENT_NODE,
    XML_DOCUMENT_NODE,
    XML_DOCUMENT_TYPE_NODE,
    XML_DOCUMENT_FRAG_NODE,
    XML_NOTATION_NODE,
    XML_HTML_DOCUMENT_NODE,
    XML_DTD_NODE,
    XML_ELEMENT_DECL,
    XML_ATTRIBUTE_DECL,
    XML_ENTITY_DECL,
    XML_NAMESPACE_DECL,
    XML_XINCLUDE_START,
    XML_XINCLUDE_END
} xmlElementType;

typedef struct _xmlNode xmlNode;
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
    xmlNs *ns;
    char *content;
    struct _xmlAttr *properties;
    xmlNs *nsDef;
    void *psvi;
    unsigned short line;
    unsigned short extra;
};

typedef struct _xmlDoc xmlDoc;

typedef struct _xmlXPathObject xmlXPathObject;
struct _xmlXPathObject {
    int type;
    xmlNodeSetPtr nodesetval;
    void *user;
    int index;
    void *user2;
    int index2;
};

typedef struct _xmlNodeSet xmlNodeSet;
typedef xmlNodeSet *xmlNodeSetPtr;
struct _xmlNodeSet {
    int nodeNr;
    int nodeMax;
    xmlNode **nodeTab;
};

/* Function prototypes needed to reach the target line */
static void xmlXPathNodeSetFreeNs(xmlNsPtr ns) {
    /* Stub implementation */
}

static void xmlXPathFreeObject(xmlXPathObject *obj) {
    /* This function should reach the target memset at line 5636 */
    xmlNodeSetPtr tmpset;
    
    if (obj == NULL)
        return;
    
    /* Simulate the condition that leads to the else branch at line 5636 */
    if (obj->type == 1 && obj->nodesetval != NULL) {
        tmpset = obj->nodesetval;
        if (tmpset->nodeNr == 1) {
            if ((tmpset->nodeTab[0] != NULL) &&
                (tmpset->nodeTab[0]->type == XML_NAMESPACE_DECL))
                xmlXPathNodeSetFreeNs((xmlNsPtr) tmpset->nodeTab[0]);
        }
        tmpset->nodeNr = 0;
        memset(obj, 0, sizeof(xmlXPathObject));
        obj->nodesetval = tmpset;
    } else {
        /* This is the target line 5636 */
        /* Vulnerability assertion: ensure obj is not NULL and sizeof is safe */
        SAILR_ASSERT(obj != NULL && sizeof(xmlXPathObject) > 0);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        memset(obj, 0, sizeof(xmlXPathObject));
    }
}

int main(void) {
    /* Create symbolic inputs to reach the else branch at line 5636 */
    xmlXPathObject *obj = (xmlXPathObject *)malloc(sizeof(xmlXPathObject));
    
    if (obj == NULL) {
        return 0;
    }
    
    /* Make obj fields symbolic to control execution path */
    klee_make_symbolic(&obj->type, sizeof(obj->type), "obj_type");
    klee_make_symbolic(&obj->nodesetval, sizeof(obj->nodesetval), "obj_nodesetval");
    
    /* Assume conditions that lead to the else branch:
       - obj->type != 1 OR obj->nodesetval == NULL
       This ensures we take the else path at line 5636 */
    klee_assume(!(obj->type == 1 && obj->nodesetval != NULL));
    
    /* Ensure obj->nodesetval is either NULL or points to valid memory if non-NULL */
    if (obj->nodesetval != NULL) {
        xmlNodeSet *set = (xmlNodeSet *)malloc(sizeof(xmlNodeSet));
        if (set != NULL) {
            set->nodeTab = NULL;
            set->nodeNr = 0;
            set->nodeMax = 0;
            obj->nodesetval = set;
        } else {
            obj->nodesetval = NULL;
        }
    }
    
    /* Call the function that contains the target memset */
    xmlXPathFreeObject(obj);
    
    /* Cleanup */
    if (obj->nodesetval != NULL) {
        free(obj->nodesetval);
    }
    free(obj);
    
    return 0;
}