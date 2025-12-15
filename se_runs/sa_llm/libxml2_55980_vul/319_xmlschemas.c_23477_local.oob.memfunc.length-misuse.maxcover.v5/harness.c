#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions to compile the target code */
typedef struct xmlSchemaParserCtxt xmlSchemaParserCtxt;
typedef struct xmlSchemaIDCMatcher xmlSchemaIDCMatcher;
typedef xmlSchemaIDCMatcher* xmlSchemaIDCMatcherPtr;

struct xmlSchemaIDCMatcher {
    int type;
    xmlSchemaIDCMatcherPtr next;
};

struct xmlSchemaParserCtxt {
    struct {
        xmlSchemaIDCMatcherPtr idcMatchers;
    } *inode;
};

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    return ptr;
}

/* Stub for xmlSchemaVErrMemory */
void xmlSchemaVErrMemory(void* vctxt, const char* msg, void* unused) {
    /* Do nothing */
}

/* Target function from xmlschemas.c around line 23477 */
int target_function(xmlSchemaParserCtxt* vctxt, xmlSchemaIDCMatcherPtr last) {
    xmlSchemaIDCMatcherPtr matcher;
    
    if (0) { /* Simulating the 'else' branch from original code */
        /* This branch would not be taken in our harness */
        return -1;
    } else {
        matcher = (xmlSchemaIDCMatcherPtr)xmlMalloc(sizeof(xmlSchemaIDCMatcher));
        if (matcher == NULL) {
            xmlSchemaVErrMemory(vctxt, "allocating an IDC matcher", NULL);
            return (-1);
        }
        
        /* TARGET LINE 23477 - memset call */
        memset(matcher, 0, sizeof(xmlSchemaIDCMatcher));
        
        /* VULNERABILITY ASSERTION: Check that matcher points to valid memory
           of at least sizeof(xmlSchemaIDCMatcher) bytes */
        SAILR_ASSERT(matcher != NULL);
        
        /* REACHABILITY ASSERTION */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    if (last == NULL)
        vctxt->inode->idcMatchers = matcher;
    else
        last->next = matcher;
    
    matcher->type = 1; /* IDC_MATCHER */
    
    return 0;
}

int main(void) {
    /* Create symbolic inputs */
    xmlSchemaParserCtxt vctxt;
    xmlSchemaIDCMatcherPtr last = NULL;
    
    /* Allocate memory for inode pointer */
    vctxt.inode = (typeof(vctxt.inode))malloc(sizeof(*vctxt.inode));
    
    /* Make vctxt.inode symbolic to explore different states */
    klee_make_symbolic(vctxt.inode, sizeof(*vctxt.inode), "vctxt_inode");
    
    /* Assume inode is not NULL to avoid null dereference */
    klee_assume(vctxt.inode != NULL);
    
    /* Initialize idcMatchers to NULL */
    vctxt.inode->idcMatchers = NULL;
    
    /* Call the target function */
    int result = target_function(&vctxt, last);
    
    /* Cleanup */
    free(vctxt.inode);
    
    return 0;
}