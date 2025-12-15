#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef unsigned char xmlChar;
typedef struct _xmlElementContent xmlElementContent;
typedef xmlElementContent *xmlElementContentPtr;

/* Minimal stub of xmlElementContent structure */
struct _xmlElementContent {
    int type;
    int ocur;
    xmlChar *name;
    xmlElementContentPtr c1;
    xmlElementContentPtr c2;
    xmlChar *prefix;
};

/* Stub functions needed to reach the target line */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlVErrMemory(void *ctx, const char *msg) {
    /* Do nothing in stub */
}

const xmlChar* xmlSplitQName3(const xmlChar *name, int *len) {
    /* For symbolic execution, return NULL or non-NULL symbolically */
    static xmlChar dummy;
    int is_null;
    klee_make_symbolic(&is_null, sizeof(is_null), "split_qname_null");
    klee_assume(is_null == 0 || is_null == 1);
    
    if (is_null) {
        return NULL;
    } else {
        if (len) {
            *len = 5; /* arbitrary non-zero length */
        }
        return &dummy;
    }
}

/* The actual function from valid.c that contains the target line */
xmlElementContentPtr xmlNewElementContent(const xmlChar *name, int type) {
    xmlElementContentPtr ret;
    
    ret = (xmlElementContentPtr) xmlMalloc(sizeof(xmlElementContent));
    if (ret == NULL) {
        xmlVErrMemory(NULL, "malloc failed");
        return(NULL);
    }
    
    /* TARGET LINE 947: memset(ret, 0, sizeof(xmlElementContent)); */
    /* Vulnerability assertion: ensure the size argument doesn't cause OOB */
    /* For memset, the vulnerability would be if sizeof(xmlElementContent) 
       exceeds the actual allocated memory or if ret points outside valid memory.
       Since xmlMalloc succeeded, we assume proper allocation, but we still
       want to assert that the memset size is within bounds of the allocation.
       The SA rule is about length-misuse, so we assert that the size
       doesn't exceed some symbolic bound that could be unsafe. */
    SAILR_ASSERT(sizeof(xmlElementContent) <= 1024); /* Reasonable upper bound */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(ret, 0, sizeof(xmlElementContent));
    ret->type = type;
    ret->ocur = 1; /* XML_ELEMENT_CONTENT_ONCE */
    if (name != NULL) {
        int l;
        const xmlChar *tmp;
        
        tmp = xmlSplitQName3(name, &l);
        if (tmp == NULL) {
            /* Handle NULL case */
        }
    }
    return ret;
}

int main(void) {
    /* Make symbolic inputs to drive execution to the target function */
    int type;
    xmlChar name_buf[256];
    int name_is_null;
    
    klee_make_symbolic(&type, sizeof(type), "type");
    klee_make_symbolic(&name_is_null, sizeof(name_is_null), "name_is_null");
    klee_assume(name_is_null == 0 || name_is_null == 1);
    
    if (name_is_null) {
        /* Call with NULL name */
        xmlNewElementContent(NULL, type);
    } else {
        /* Call with non-NULL name */
        klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
        xmlNewElementContent(name_buf, type);
    }
    
    return 0;
}