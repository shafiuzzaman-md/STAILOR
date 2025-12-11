#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub types needed to reach the target line */
typedef struct _xmlSchemaIDCMatcher xmlSchemaIDCMatcher;
struct _xmlSchemaIDCMatcher {
    xmlSchemaIDCMatcher *next;
    /* other fields omitted */
};

typedef struct _xmlSchemaInode xmlSchemaInode;
struct _xmlSchemaInode {
    xmlSchemaIDCMatcher *idcMatchers;
    /* other fields omitted */
};

typedef struct _xmlSchemaValidCtxt xmlSchemaValidCtxt;
struct _xmlSchemaValidCtxt {
    xmlSchemaInode *inode;
    /* other fields omitted */
};

/* Stub functions to avoid linking with libxml2 */
void xmlSchemaVErrMemory(xmlSchemaValidCtxt *vctxt, const char *msg, const char *extra) {
    /* Do nothing */
}

int xmlSchemaFormatQName(const char *name, char *buffer, int size) {
    /* Stub implementation */
    if (size > 0 && buffer) {
        buffer[0] = '\0';
    }
    return 0;
}

/* Entrypoint that leads to the target line */
static int target_function(xmlSchemaValidCtxt *vctxt, xmlSchemaIDCMatcher *last, int an, int ret) {
    xmlSchemaIDCMatcher *matcher = NULL;
    
    /* This mimics the allocation check at line 23202-23206 */
    if (an > 0) {
        matcher = (xmlSchemaIDCMatcher*)malloc(sizeof(xmlSchemaIDCMatcher));
        if (matcher == NULL) {
            xmlSchemaVErrMemory(vctxt, "allocating an IDC matcher", NULL);
            return (-1);
        }
        /* TARGET LINE 23207: memset with sizeof(xmlSchemaIDCMatcher) */
        memset(matcher, 0, sizeof(xmlSchemaIDCMatcher));
    }
    
    if (last == NULL) {
        vctxt->inode->idcMatchers = matcher;
    } else {
        last->next = matcher;
    }
    
    return ret;
}

int main(void) {
    /* Symbolic variables from SA spec */
    int an;
    int ret;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&an, sizeof(an), "an");
    klee_make_symbolic(&ret, sizeof(ret), "ret");
    
    /* Apply bounds hints from SA spec */
    klee_assume(an >= 0);
    klee_assume(ret >= 0);
    
    /* Allocate and initialize context structures */
    xmlSchemaValidCtxt vctxt;
    xmlSchemaInode inode;
    xmlSchemaIDCMatcher last;
    
    vctxt.inode = &inode;
    inode.idcMatchers = NULL;
    last.next = NULL;
    
    /* Call the target function */
    int result = target_function(&vctxt, &last, an, ret);
    
    /* Vulnerability assertion: check if memset size is safe */
    /* For OOB memset, we need to ensure allocation succeeded before memset */
    /* The condition is: if an > 0, then matcher != NULL before memset */
    /* Since memset uses sizeof(xmlSchemaIDCMatcher), the OOB risk is in the allocation size */
    /* We assert that if allocation size is positive, allocation succeeded */
    SAILR_ASSERT(an <= 0 || result != -1);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    if (an > 0 && result != -1) {
        /* Free allocated matcher if it exists */
        xmlSchemaIDCMatcher *matcher = (last.next != NULL) ? last.next : inode.idcMatchers;
        if (matcher != NULL) {
            free(matcher);
        }
    }
    
    return 0;
}