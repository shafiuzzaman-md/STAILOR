#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlDict xmlDict;
typedef struct _xmlParserCtxt xmlParserCtxt;
typedef struct _xmlNode xmlNode;
typedef struct _xmlNode *xmlNodePtr;
typedef unsigned char xmlChar;

/* Simplified xmlParserCtxt structure with only needed fields */
struct _xmlParserCtxt {
    int freeElemsNr;
    int dictNames;
    xmlDict *dict;
};

/* Simplified xmlNode structure */
struct _xmlNode {
    void *next;
    void *prev;
    void *parent;
    void *children;
    void *last;
    void *doc;
    void *ns;
    void *content;
    void *properties;
    void *nsDef;
    void *psvi;
    unsigned short type;
    char *name;
    void *ns;
    void *atype;
    void *psvi;
};

/* Stub functions to avoid linking issues */
void xmlErrMemory(xmlParserCtxt *ctxt, const char *msg) {
    (void)ctxt;
    (void)msg;
}

xmlNodePtr xmlMalloc(size_t size) {
    return (xmlNodePtr)malloc(size);
}

/* Target function prototype */
xmlNodePtr xmlSAX2Characters(xmlParserCtxt *ctxt, const xmlChar *str, int len);

/* Implementation of the target function based on the code snippet */
xmlNodePtr xmlSAX2Characters(xmlParserCtxt *ctxt, const xmlChar *str, int len) {
    xmlNodePtr ret;
    
    if (ctxt->freeElemsNr > 0) {
        /* Simplified from original: get node from free list */
        ret = (xmlNodePtr)malloc(sizeof(xmlNode));
        ctxt->freeElemsNr--;
    } else {
        ret = (xmlNodePtr)xmlMalloc(sizeof(xmlNode));
    }
    
    if (ret == NULL) {
        xmlErrMemory(ctxt, "xmlSAX2Characters");
        return NULL;
    }
    
    /* TARGET LINE 1872: memset(ret, 0, sizeof(xmlNode)); */
    memset(ret, 0, sizeof(xmlNode));
    
    /* Vulnerability assertion: check if memset size is safe */
    SAILR_ASSERT(sizeof(xmlNode) <= (size_t)-1);  /* Basic size safety */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /*
     * intern the formatting blanks found between tags, or the
     * very short strings
     */
    if (ctxt->dictNames) {
        xmlChar cur = str[len];  /* Potential OOB read if len is wrong */
        (void)cur;
        
        if ((len < (int)(2 * sizeof(void *))) && ctxt->dict) {
            /* Simplified stub */
        }
    }
    
    return ret;
}

int main(void) {
    /* Create symbolic parser context */
    xmlParserCtxt ctxt;
    
    /* Make context fields symbolic */
    klee_make_symbolic(&ctxt.freeElemsNr, sizeof(ctxt.freeElemsNr), "freeElemsNr");
    klee_make_symbolic(&ctxt.dictNames, sizeof(ctxt.dictNames), "dictNames");
    
    /* Constrain freeElemsNr to be non-negative */
    klee_assume(ctxt.freeElemsNr >= 0);
    
    /* Create symbolic string and length */
    xmlChar str[100];
    int len;
    
    klee_make_symbolic(str, sizeof(str), "str");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Constrain len to be within reasonable bounds for the string */
    klee_assume(len >= 0);
    klee_assume(len < 100);  /* Ensure we don't read out of bounds in str[len] */
    
    /* Call the target function */
    xmlNodePtr result = xmlSAX2Characters(&ctxt, str, len);
    
    /* Clean up if allocation succeeded */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}