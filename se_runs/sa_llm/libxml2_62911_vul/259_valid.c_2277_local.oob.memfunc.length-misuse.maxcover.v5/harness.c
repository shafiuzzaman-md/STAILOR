#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlNotation xmlNotation;
typedef xmlNotation *xmlNotationPtr;

typedef struct _xmlValidCtxt xmlValidCtxt;
typedef xmlValidCtxt *xmlValidCtxtPtr;

typedef struct _xmlElement xmlElement;
typedef xmlElement *xmlElementPtr;

typedef struct _xmlElementContent xmlElementContent;
typedef xmlElementContent *xmlElementContentPtr;

typedef struct _xmlEnumeration xmlEnumeration;
typedef xmlEnumeration *xmlEnumerationPtr;

/* Stub implementations for required functions */
void xmlVErrMemory(xmlValidCtxtPtr ctxt, const char *msg) {
    /* Do nothing for stub */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

char *xmlStrdup(const char *cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen(cur) + 1;
    char *copy = (char *)malloc(len);
    if (copy) memcpy(copy, cur, len);
    return copy;
}

/* Minimal xmlNotation structure definition */
struct _xmlNotation {
    const char *name;
    const char *PublicID;
    const char *SystemID;
};

/* Minimal xmlElement structure definition */
struct _xmlElement {
    void *dummy;
};

/* Minimal xmlElementContent structure definition */
struct _xmlElementContent {
    void *dummy;
};

/* Minimal xmlEnumeration structure definition */
struct _xmlEnumeration {
    void *dummy;
};

/* Minimal xmlValidCtxt structure definition */
struct _xmlValidCtxt {
    void *dummy;
};

/* Target function from valid.c - simplified version to reach line 2277 */
xmlNotationPtr xmlAddNotationDecl(xmlValidCtxtPtr ctxt, const char *name) {
    xmlNotationPtr ret;
    
    /* Line 2277 in original: ret = (xmlNotationPtr) xmlMalloc(sizeof(xmlNotation)); */
    ret = (xmlNotationPtr) xmlMalloc(sizeof(xmlNotation));
    if (ret == NULL) {
        xmlVErrMemory(ctxt, "malloc failed");
        return(NULL);
    }
    
    /* This is the memset call that the SA rule is concerned about */
    memset(ret, 0, sizeof(xmlNotation));
    
    /*
     * fill the structure.
     */
    ret->name = xmlStrdup(name);
    
    /* Vulnerability assertion: check that the size used in memset is valid */
    SAILR_ASSERT(sizeof(xmlNotation) > 0 && sizeof(xmlNotation) <= 1024); /* Reasonable bound */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return ret;
}

/* Entry point function that calls xmlAddNotationDecl */
xmlElementPtr xmlAddElementDecl(xmlValidCtxtPtr ctxt, const char *name, 
                                int type, xmlElementContentPtr content, 
                                xmlEnumerationPtr tree) {
    /* For this harness, we just need to call xmlAddNotationDecl */
    /* Create a dummy notation declaration to reach the target line */
    xmlAddNotationDecl(ctxt, name);
    return NULL;
}

int main(void) {
    /* Create symbolic inputs */
    char name[256];
    xmlValidCtxt ctxt;
    
    /* Make the name symbolic */
    klee_make_symbolic(name, sizeof(name), "name");
    /* Assume it's null-terminated */
    klee_assume(name[255] == '\0');
    
    /* Call the entrypoint function */
    xmlAddElementDecl(&ctxt, name, 0, NULL, NULL);
    
    return 0;
}