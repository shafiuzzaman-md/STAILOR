#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 functions we need */
int xmlUTF8Strsize(const xmlChar *utf, int len);
void *xmlMallocAtomic(size_t size);

/* Type definitions */
typedef unsigned char xmlChar;

/* Target function from xmlstring.c */
xmlChar *xmlStrndup(const xmlChar *utf, int len) {
    int i;
    xmlChar *ret;

    if (utf == NULL) return NULL;
    if (len < 0) return NULL;

    i = xmlUTF8Strsize(utf, len);
    ret = (xmlChar *) xmlMallocAtomic((size_t) i + 1);
    if (ret == NULL) {
        return NULL;
    }
    memcpy(ret, utf, i);
    ret[i] = 0;
    return ret;
}

/* Stub for xmlUTF8Strsize - returns symbolic size */
int xmlUTF8Strsize(const xmlChar *utf, int len) {
    int result;
    klee_make_symbolic(&result, sizeof(result), "utf8_strsize_result");
    /* Assume non-negative result as hinted by SA spec */
    klee_assume(result >= 0);
    return result;
}

/* Stub for xmlMallocAtomic - always succeeds for this harness */
void *xmlMallocAtomic(size_t size) {
    return malloc(size);
}

int main(void) {
    xmlChar utf_buffer[1024];
    int len;
    xmlChar *result;

    /* Make inputs symbolic */
    klee_make_symbolic(utf_buffer, sizeof(utf_buffer), "utf_buffer");
    klee_make_symbolic(&len, sizeof(len), "len");

    /* Assume len >= 0 as hinted by SA spec */
    klee_assume(len >= 0);

    /* Call the target function */
    result = xmlStrndup(utf_buffer, len);

    /* If we reach the memcpy at line 878, check vulnerability condition */
    if (result != NULL) {
        /* Vulnerability assertion: i (return from xmlUTF8Strsize) must be <= buffer size */
        /* Since we don't know the actual buffer size, we assert it's within reasonable bounds */
        int i = xmlUTF8Strsize(utf_buffer, len);
        SAILR_ASSERT(i <= 1024);
        
        /* Reachability marker */
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }

    /* Cleanup */
    if (result != NULL) {
        free(result);
    }

    return 0;
}