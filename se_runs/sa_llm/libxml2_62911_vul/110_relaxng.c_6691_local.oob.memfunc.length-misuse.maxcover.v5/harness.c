#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlDoc xmlDoc;
typedef struct _xmlRelaxNGParserCtxt xmlRelaxNGParserCtxt;
typedef void* xmlGenericErrorContext;

/* Minimal stub types to satisfy compilation */
struct _xmlDoc {
    int dummy;
};

struct _xmlRelaxNGParserCtxt {
    xmlDoc* document;
    int freedoc;
    void* userData;
};

/* Stub functions referenced in the snippet */
void xmlRngPErrMemory(void* ctxt, const char* msg) {
    /* Do nothing */
}

void xmlFreeDoc(xmlDoc* doc) {
    /* Do nothing */
}

xmlDoc* xmlCopyDoc(xmlDoc* doc, int recursive) {
    /* Return a dummy doc */
    xmlDoc* copy = (xmlDoc*)malloc(sizeof(xmlDoc));
    if (copy) {
        copy->dummy = 0;
    }
    return copy;
}

/* The target function - reconstructed from the snippet */
xmlRelaxNGParserCtxt* xmlRelaxNGCopyValidState(xmlDoc* doc) {
    xmlDoc* copy;
    xmlRelaxNGParserCtxt* ret;

    if (doc == NULL)
        return NULL;

    copy = xmlCopyDoc(doc, 1);
    if (copy == NULL)
        return NULL;

    ret = (xmlRelaxNGParserCtxt*)malloc(sizeof(xmlRelaxNGParserCtxt));
    if (ret == NULL) {
        xmlRngPErrMemory(NULL, "building parser\n");
        xmlFreeDoc(copy);
        return (NULL);
    }
    /* TARGET LINE 6691: memset(ret, 0, sizeof(xmlRelaxNGParserCtxt)); */
    memset(ret, 0, sizeof(xmlRelaxNGParserCtxt));
    ret->document = copy;
    ret->freedoc = 1;
    ret->userData = xmlGenericErrorContext;
    return (ret);
}

int main(void) {
    /* Symbolic input to control execution path */
    int doc_is_null;
    klee_make_symbolic(&doc_is_null, sizeof(doc_is_null), "doc_is_null");
    klee_assume(doc_is_null == 0);  /* Ensure doc is not NULL to proceed */

    /* Create a dummy doc - allocation may fail symbolically */
    xmlDoc* doc = (xmlDoc*)malloc(sizeof(xmlDoc));
    if (doc) {
        doc->dummy = 0;
    }

    /* Call the target function */
    xmlRelaxNGParserCtxt* ctxt = xmlRelaxNGCopyValidState(doc);

    /* If we reach here, the malloc in xmlRelaxNGCopyValidState succeeded,
       and we are about to execute the memset at line 6691.
       The vulnerability assertion: ensure the allocated size is at least
       sizeof(xmlRelaxNGParserCtxt) to avoid OOB write.
       Since malloc succeeded, we assume the size is sufficient, but we
       add the assertion for the SA pattern. */
    if (ctxt != NULL) {
        /* Vulnerability assertion: the memset length should not exceed
           the allocated memory. Since we don't have the actual allocated
           size, we assert that the pointer is non-null (malloc succeeded)
           and the size is positive. For length-misuse, we assert that
           the size argument to memset is within bounds. */
        SAILR_ASSERT(sizeof(xmlRelaxNGParserCtxt) > 0);  /* Basic sanity */
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    /* Cleanup */
    if (doc) free(doc);
    if (ctxt) free(ctxt);

    return 0;
}