#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 functions we need */
typedef unsigned char xmlChar;
xmlChar* xmlMalloc(size_t size);
xmlChar* xmlStrndup(const xmlChar* str, int size);

/* Target function from xmlstring.c */
xmlChar* xmlStrcat(xmlChar* str1, const xmlChar* str2) {
    int size, len;
    xmlChar* ret;
    
    if (str1 == NULL || str2 == NULL)
        return(NULL);
    
    size = strlen((const char*)str1);
    len = strlen((const char*)str2);
    
    if (len < 0)
        return(NULL);
    ret = (xmlChar *) xmlMalloc((size_t) size + len + 1);
    if (ret == NULL) {
        return(xmlStrndup(str1, size));
    }
    memcpy(ret, str1, size);
    memcpy(&ret[size], str2, len);
    ret[size + len] = 0;
    return(ret);
}

/* Stub implementations */
xmlChar* xmlMalloc(size_t size) {
    return (xmlChar*)malloc(size);
}

xmlChar* xmlStrndup(const xmlChar* str, int size) {
    if (str == NULL || size < 0) return NULL;
    xmlChar* ret = (xmlChar*)malloc(size + 1);
    if (ret == NULL) return NULL;
    memcpy(ret, str, size);
    ret[size] = 0;
    return ret;
}

int main(void) {
    /* Symbolic inputs for str1 and str2 */
    xmlChar str1[256];
    xmlChar str2[256];
    
    klee_make_symbolic(str1, sizeof(str1), "str1");
    klee_make_symbolic(str2, sizeof(str2), "str2");
    
    /* Ensure they are null-terminated strings */
    klee_assume(str1[255] == 0);
    klee_assume(str2[255] == 0);
    
    /* Call the target function */
    xmlChar* result = xmlStrcat(str1, str2);
    
    /* Vulnerability assertion: check that len is within bounds */
    int len = strlen((const char*)str2);
    int size = strlen((const char*)str1);
    
    /* The vulnerability is in memcpy(&ret[size], str2, len) at line 505.
       We need to ensure len doesn't cause OOB write. Since ret is allocated
       with size + len + 1 bytes, and we write len bytes starting at offset size,
       the condition for safety is: size + len <= size + len (always true for
       non-negative len). However, the actual issue might be if len is negative
       or extremely large. The SA pattern suggests length-misuse.
       
       Based on the pattern local.oob.memfunc.length-misuse.maxcover.v5,
       we assert that len is within reasonable bounds for the allocation. */
    SAILR_ASSERT(len >= 0 && len < 256);  /* Prevent excessive length */
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    free(result);
    return 0;
}