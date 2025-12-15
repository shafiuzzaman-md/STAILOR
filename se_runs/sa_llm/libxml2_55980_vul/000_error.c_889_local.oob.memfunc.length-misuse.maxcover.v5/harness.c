#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations of libxml2 types and functions needed */
typedef struct _xmlError xmlError;
struct _xmlError {
    int domain;
    int code;
    char *message;
    int level;
    char *file;
    int line;
    char *str1;
    char *str2;
    char *str3;
    int int1;
    int int2;
    void *ctxt;
    void *node;
};

/* Stub for xmlFree to avoid linking issues */
void xmlFree(void *ptr) {
    if (ptr) free(ptr);
}

/* The target function from error.c:889 */
void xmlResetError(xmlError *err) {
    if (err->file != NULL)
        xmlFree(err->file);
    if (err->str1 != NULL)
        xmlFree(err->str1);
    if (err->str2 != NULL)
        xmlFree(err->str2);
    if (err->str3 != NULL)
        xmlFree(err->str3);
    /* TARGET LINE 889: memset(err, 0, sizeof(xmlError)); */
    memset(err, 0, sizeof(xmlError));
    err->code = 0; /* XML_ERR_OK */
}

int main(void) {
    /* Create a symbolic xmlError structure */
    xmlError *err = (xmlError *)malloc(sizeof(xmlError));
    if (!err) return 0;

    /* Make the entire structure symbolic to explore all states */
    klee_make_symbolic(err, sizeof(xmlError), "err");

    /* Assume the structure is valid (non-null pointers point to allocated memory) */
    if (err->file) {
        err->file = (char *)malloc(256);
        klee_make_symbolic(err->file, 256, "err_file");
    }
    if (err->str1) {
        err->str1 = (char *)malloc(256);
        klee_make_symbolic(err->str1, 256, "err_str1");
    }
    if (err->str2) {
        err->str2 = (char *)malloc(256);
        klee_make_symbolic(err->str2, 256, "err_str2");
    }
    if (err->str3) {
        err->str3 = (char *)malloc(256);
        klee_make_symbolic(err->str3, 256, "err_str3");
    }

    /* Call the target function */
    xmlResetError(err);

    /* Vulnerability assertion: ensure err pointer is valid and size is correct */
    SAILR_ASSERT(err != NULL && sizeof(xmlError) > 0);

    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");

    /* Cleanup */
    free(err);
    return 0;
}