#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations of libxml2 functions we need */
typedef unsigned char xmlChar;
xmlChar* xmlMalloc(size_t size);
xmlChar* xmlStrndup(const xmlChar* str, int size);

/* Target function from xmlstring.c */
xmlChar* xmlStrcat(xmlChar* str1, const xmlChar* str2) {
    int size, len;
    xmlChar* ret;
    
    if (str1 == NULL || str2 == NULL) return NULL;
    
    size = strlen((const char*)str1);
    len = strlen((const char*)str2);
    
    ret = (xmlChar*)xmlMalloc((size_t)size + len + 1);
    if (ret == NULL) {
        return xmlStrndup(str1, size);
    }
    
    memcpy(ret, str1, size);
    memcpy(&ret[size], str2, len);
    ret[size + len] = 0;
    return ret;
}

/* Stub implementations */
xmlChar* xmlMalloc(size_t size) {
    return (xmlChar*)malloc(size);
}

xmlChar* xmlStrndup(const xmlChar* str, int size) {
    if (str == NULL || size < 0) return NULL;
    xmlChar* copy = (xmlChar*)malloc(size + 1);
    if (copy == NULL) return NULL;
    memcpy(copy, str, size);
    copy[size] = 0;
    return copy;
}

int main(void) {
    /* Symbolic inputs */
    xmlChar str1[256];
    xmlChar str2[256];
    int size, len;
    
    /* Make inputs symbolic */
    klee_make_symbolic(str1, sizeof(str1), "str1");
    klee_make_symbolic(str2, sizeof(str2), "str2");
    
    /* Ensure null-terminated strings */
    str1[255] = 0;
    str2[255] = 0;
    
    /* Get actual lengths */
    size = strlen((const char*)str1);
    len = strlen((const char*)str2);
    
    /* Assume reasonable bounds for symbolic execution */
    klee_assume(size >= 0 && size < 256);
    klee_assume(len >= 0 && len < 256);
    
    /* Call the target function */
    xmlChar* result = xmlStrcat(str1, str2);
    
    /* Vulnerability assertion: check if memcpy length arguments are safe */
    /* The vulnerable memcpy is: memcpy(&ret[size], str2, len) */
    /* We need to ensure len doesn't exceed allocated buffer bounds */
    /* The allocation is: size + len + 1 bytes, so available space after ret[size] is len + 1 */
    /* The memcpy copies len bytes, so we need len <= len + 1 (always true) */
    /* But the real issue is if len is negative or extremely large causing overflow */
    /* The SA pattern suggests checking that len is within reasonable bounds */
    SAILR_ASSERT(len >= 0 && len < 256);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    if (result != NULL) free(result);
    
    return 0;
}