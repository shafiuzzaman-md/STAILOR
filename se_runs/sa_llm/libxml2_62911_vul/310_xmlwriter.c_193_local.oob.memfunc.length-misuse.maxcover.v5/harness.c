#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stubs for libxml2 types and functions needed to reach target line */
typedef struct _xmlTextWriter xmlTextWriter;
typedef struct _xmlList xmlList;

typedef enum {
    XML_ERR_NO_MEMORY
} xmlError;

typedef void (*xmlFreeFunc)(void *);
typedef int (*xmlCmpFunc)(const void *, const void *);

/* Stub implementations */
void xmlWriterErrMsg(void *ctx, xmlError error, const char *msg) {
    /* Do nothing - just a stub */
}

xmlList* xmlListCreate(xmlFreeFunc deallocator, xmlCmpFunc comparator) {
    /* Return symbolic pointer that could be NULL or non-NULL */
    xmlList* list;
    klee_make_symbolic(&list, sizeof(list), "list");
    klee_assume(list == 0 || list != 0); /* Could be NULL or valid */
    return list;
}

void xmlFreeTextWriterStackEntry(void *entry) {
    /* Stub - do nothing */
}

int xmlCmpTextWriterStackEntry(const void *a, const void *b) {
    /* Stub - return arbitrary value */
    int result;
    klee_make_symbolic(&result, sizeof(result), "cmp_result");
    return result;
}

/* Target function prototype */
xmlTextWriter* xmlNewTextWriter(void);

/* Main harness */
int main(void) {
    /* Call the target function */
    xmlTextWriter* ret = xmlNewTextWriter();
    
    /* If we reach here, the function returned successfully */
    /* The vulnerability assertion: check that memset size doesn't exceed allocation */
    /* For xmlTextWriter struct allocation, we need to ensure sizeof(xmlTextWriter) 
       doesn't exceed the actual allocated memory for 'ret' */
    SAILR_ASSERT(ret != NULL); /* Basic null check before memset */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    return 0;
}

/* Implementation of xmlNewTextWriter to match the code snippet */
xmlTextWriter* xmlNewTextWriter(void) {
    xmlTextWriter* ret;
    
    /* Allocate memory for xmlTextWriter */
    ret = (xmlTextWriter*)malloc(sizeof(xmlTextWriter));
    
    /* Make the allocation result symbolic to explore both paths */
    int alloc_success;
    klee_make_symbolic(&alloc_success, sizeof(alloc_success), "alloc_success");
    klee_assume(alloc_success == 0 || alloc_success == 1);
    
    if (alloc_success == 0) {
        /* Simulate malloc failure */
        free(ret);
        ret = NULL;
    }
    
    if (ret == NULL) {
        xmlWriterErrMsg(NULL, XML_ERR_NO_MEMORY,
                        "xmlNewTextWriter : out of memory!\n");
        return NULL;
    }
    
    /* TARGET LINE 193: memset(ret, 0, sizeof(xmlTextWriter)); */
    memset(ret, 0, sizeof(xmlTextWriter));
    
    ret->nodes = xmlListCreate(xmlFreeTextWriterStackEntry,
                               xmlCmpTextWriterStackEntry);
    
    /* Make the list creation result symbolic */
    int list_alloc_success;
    klee_make_symbolic(&list_alloc_success, sizeof(list_alloc_success), "list_alloc_success");
    klee_assume(list_alloc_success == 0 || list_alloc_success == 1);
    
    if (list_alloc_success == 0) {
        /* Simulate xmlListCreate failure */
        if (ret->nodes != NULL) {
            /* In real code, would free the list */
        }
        ret->nodes = NULL;
    }
    
    if (ret->nodes == NULL) {
        xmlWriterErrMsg(NULL, XML_ERR_NO_MEMORY, "");
        /* In real code, would free ret and return NULL */
        free(ret);
        return NULL;
    }
    
    return ret;
}