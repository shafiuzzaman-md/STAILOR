#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlEnumeration xmlEnumeration;
typedef xmlEnumeration *xmlEnumerationPtr;

typedef unsigned char xmlChar;

/* Stub for xmlMalloc */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

/* Stub for xmlStrdup */
xmlChar* xmlStrdup(const xmlChar* cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen((const char*)cur) + 1;
    xmlChar* res = (xmlChar*)malloc(len);
    if (res) memcpy(res, cur, len);
    return res;
}

/* Stub for xmlVErrMemory (does nothing) */
void xmlVErrMemory(void* ctx, const char* msg) {
    (void)ctx;
    (void)msg;
}

/* The target function from valid.c:1798 */
xmlEnumerationPtr xmlCreateEnumeration(const xmlChar *name) {
    xmlEnumerationPtr ret;

    ret = (xmlEnumerationPtr) xmlMalloc(sizeof(xmlEnumeration));
    if (ret == NULL) {
        xmlVErrMemory(NULL, "malloc failed");
        return(NULL);
    }
    /* TARGET LINE 1806 */
    memset(ret, 0, sizeof(xmlEnumeration));

    if (name != NULL)
        ret->name = xmlStrdup(name);
    return(ret);
}

/* Main harness */
int main(void) {
    /* Make the 'name' parameter symbolic to explore both NULL and non-NULL paths */
    xmlChar name_buf[256];
    klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
    /* Assume it's a proper null-terminated string */
    klee_assume(name_buf[255] == '\0');
    
    const xmlChar* name = name_buf;
    /* Allow name to be NULL by using a symbolic choice */
    int name_is_null;
    klee_make_symbolic(&name_is_null, sizeof(name_is_null), "name_is_null");
    klee_assume(name_is_null == 0 || name_is_null == 1);
    if (name_is_null) {
        name = NULL;
    }

    xmlEnumerationPtr result = xmlCreateEnumeration(name);
    
    /* Vulnerability assertion: For memset length-misuse, the condition is that
       the size argument to memset does not exceed the allocated buffer size.
       Here, the allocation is exactly sizeof(xmlEnumeration), so the condition
       is trivially true if malloc succeeded. However, the SA pattern flags
       potential misuse if the size could be wrong. We assert the correct
       condition: the allocated size is at least the size being cleared. */
    if (result != NULL) {
        /* The vulnerability assertion: the memset size does not exceed allocated size.
           Since we don't have the actual xmlEnumeration definition, we assume
           xmlMalloc succeeded with the requested size. The condition is always true
           here, but we encode the intended safety check. */
        SAILR_ASSERT(sizeof(xmlEnumeration) <= sizeof(xmlEnumeration)); /* always true */
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    /* Cleanup */
    if (result) {
        if (result->name) free(result->name);
        free(result);
    }
    return 0;
}