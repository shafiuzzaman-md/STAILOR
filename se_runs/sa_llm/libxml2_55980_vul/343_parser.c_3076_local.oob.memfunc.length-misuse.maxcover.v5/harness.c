#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stubs for libxml2 functions needed to reach target */
typedef struct _xmlParserCtxt xmlParserCtxt;
typedef unsigned char xmlChar;

void xmlErrMemory(xmlParserCtxt* ctxt, const char* extra) {
    /* stub */
}

void* xmlMallocAtomic(size_t size) {
    return malloc(size);
}

void* xmlRealloc(void* ptr, size_t size) {
    return realloc(ptr, size);
}

/* Target function signature inferred from context */
xmlChar* target_function(xmlParserCtxt* ctxt, const xmlChar* buf, int len, int c) {
    xmlChar* buffer;
    int max;

    max = len * 2;
    buffer = (xmlChar*)xmlMallocAtomic(max);
    if (buffer == NULL) {
        xmlErrMemory(ctxt, NULL);
        return NULL;
    }
    
    /* TARGET LINE 3076 */
    memcpy(buffer, buf, len);
    
    /* Vulnerability assertion: ensure len does not exceed allocated buffer size */
    SAILR_ASSERT(len <= max);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    while (c != 0) {
        if (len + 10 > max) {
            xmlChar* tmp;
            max *= 2;
            tmp = (xmlChar*)xmlRealloc(buffer, max);
            if (tmp == NULL) {
                xmlErrMemory(ctxt, NULL);
                free(buffer);
                return NULL;
            }
            buffer = tmp;
        }
        /* Simplified loop to avoid infinite symbolic execution */
        break;
    }
    
    return buffer;
}

int main(void) {
    /* Symbolic inputs to reach target function */
    xmlParserCtxt ctxt;
    xmlChar buf[1024];
    int len;
    int c;
    
    /* Make inputs symbolic */
    klee_make_symbolic(buf, sizeof(buf), "buf");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&c, sizeof(c), "c");
    
    /* Assume plausible values to reach the target line */
    klee_assume(len >= 0);
    klee_assume(len < 1024);  /* buf size */
    klee_assume(len * 2 > 0); /* ensure positive allocation */
    
    /* Call target function */
    xmlChar* result = target_function(&ctxt, buf, len, c);
    
    /* Cleanup */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}