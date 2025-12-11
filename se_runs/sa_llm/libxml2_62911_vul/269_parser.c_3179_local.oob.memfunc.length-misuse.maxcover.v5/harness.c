#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stubs for libxml2 types and functions needed to reach target */
typedef struct _xmlParserCtxt xmlParserCtxt;
typedef unsigned char xmlChar;

/* Stub for xmlMallocAtomic */
void* xmlMallocAtomic(size_t size) {
    return malloc(size);
}

/* Stub for xmlErrMemory */
void xmlErrMemory(xmlParserCtxt* ctxt, const char* extra) {
    /* Do nothing */
}

/* Target function signature from SA spec */
xmlChar* xmlParserNsLookup(xmlParserCtxt* ctxt, const xmlChar* prefix);

/* Simplified implementation of xmlParserNsLookup to reach line 3179 */
xmlChar* xmlParserNsLookup(xmlParserCtxt* ctxt, const xmlChar* prefix) {
    xmlChar* buffer;
    xmlChar* tmp;
    int c = ':';  /* Will cause loop to not execute */
    int max;
    int len;
    const xmlChar* buf = prefix;
    
    /* Make len and max symbolic to explore different values */
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&max, sizeof(max), "max");
    
    /* Assume constraints based on context */
    klee_assume(len >= 0);
    klee_assume(max >= 0);
    
    /* Line 3174-3178: allocation and check */
    buffer = (xmlChar*)xmlMallocAtomic(max);
    if (buffer == NULL) {
        xmlErrMemory(ctxt, NULL);
        return NULL;
    }
    
    /* Line 3179: memcpy - TARGET LINE */
    /* Vulnerability assertion: ensure len doesn't exceed allocated buffer size */
    SAILR_ASSERT(len <= max);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memcpy(buffer, buf, len);
    
    /* Rest of the function (simplified) */
    while ((c != 0) && (c != ':')) {
        if (len + 10 > max) {
            max *= 2;
            tmp = (xmlChar*)xmlMallocAtomic(max);
            if (tmp == NULL) {
                xmlErrMemory(ctxt, NULL);
                free(buffer);
                return NULL;
            }
            memcpy(tmp, buffer, len);
            free(buffer);
            buffer = tmp;
        }
        /* Simplified loop body */
        break;
    }
    
    return buffer;
}

/* Main harness */
int main(void) {
    xmlParserCtxt dummy_ctxt;
    xmlChar prefix[100];
    int prefix_len;
    
    /* Make prefix length symbolic */
    klee_make_symbolic(&prefix_len, sizeof(prefix_len), "prefix_len");
    
    /* Constrain prefix length to fit in buffer */
    klee_assume(prefix_len >= 0);
    klee_assume(prefix_len < 100);
    
    /* Initialize prefix with some data */
    for (int i = 0; i < 100; i++) {
        prefix[i] = 'a';
    }
    
    /* Call the target function */
    xmlChar* result = xmlParserNsLookup(&dummy_ctxt, prefix);
    
    /* Cleanup if result was allocated */
    if (result != NULL) {
        free(result);
    }
    
    return 0;
}