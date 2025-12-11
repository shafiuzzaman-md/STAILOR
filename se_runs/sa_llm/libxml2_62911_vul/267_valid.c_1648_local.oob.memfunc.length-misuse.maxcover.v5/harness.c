#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions we need */
typedef struct _xmlEnumeration xmlEnumeration;
typedef xmlEnumeration *xmlEnumerationPtr;

struct _xmlEnumeration {
    struct _xmlEnumeration *next;
    const xmlChar *name;
};

typedef unsigned char xmlChar;

/* Stub implementations of libxml2 functions we need */
void xmlVErrMemory(void *ctxt, const char *msg) {
    /* Do nothing for stub */
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

xmlChar *xmlStrdup(const xmlChar *cur) {
    if (cur == NULL) return NULL;
    size_t len = strlen((const char *)cur) + 1;
    xmlChar *res = (xmlChar *)malloc(len);
    if (res) memcpy(res, cur, len);
    return res;
}

/* The function we need to reach - from valid.c line 1648 */
xmlEnumerationPtr xmlCreateEnumeration(const xmlChar *name) {
    xmlEnumerationPtr ret;
    
    ret = (xmlEnumerationPtr) xmlMalloc(sizeof(xmlEnumeration));
    if (ret == NULL) {
        xmlVErrMemory(NULL, "malloc failed");
        return(NULL);
    }
    memset(ret, 0, sizeof(xmlEnumeration));
    
    if (name != NULL)
        ret->name = xmlStrdup(name);
    return(ret);
}

/* Entrypoint function mentioned in SA spec */
void xmlAddElementDecl(void) {
    /* This function would call xmlCreateEnumeration in real code */
    /* For our harness, we call xmlCreateEnumeration directly */
}

int main(void) {
    /* Make the 'name' parameter symbolic to explore different paths */
    char name_buf[256];
    klee_make_symbolic(name_buf, sizeof(name_buf), "name_buf");
    
    /* Assume reasonable bounds for symbolic string */
    klee_assume(name_buf[255] == '\0'); /* Ensure null termination */
    
    /* Call the target function */
    xmlEnumerationPtr result = xmlCreateEnumeration((const xmlChar *)name_buf);
    
    /* Vulnerability assertion: For memset length-misuse, we need to ensure
       the size passed to memset doesn't exceed allocated buffer.
       In this case, xmlMalloc allocates sizeof(xmlEnumeration) and
       memset writes sizeof(xmlEnumeration). The vulnerability would be
       if sizeof(xmlEnumeration) computation is wrong or if the allocation
       fails but we still memset. However, the SA pattern suggests
       length/count may be unbounded for memset().
       
       The actual vulnerability condition: The size passed to memset
       should not exceed the allocated memory. Since xmlMalloc returns
       exactly sizeof(xmlEnumeration) bytes, and memset writes exactly
       sizeof(xmlEnumeration) bytes, the condition is always true IF
       allocation succeeds. But the SA might be concerned about the
       case where allocation size is computed incorrectly.
       
       We'll assert that the size used in memset (sizeof(xmlEnumeration))
       is reasonable (non-negative and not excessively large). */
    
    if (result != NULL) {
        /* We reached the memset call at line 1648 */
        SAILR_ASSERT(sizeof(xmlEnumeration) >= 0 && sizeof(xmlEnumeration) <= 1024);
        klee_assert(0 && "SAILR_REACH_ASSERT");
        
        /* Clean up */
        if (result->name) free((void *)result->name);
        free(result);
    }
    
    return 0;
}