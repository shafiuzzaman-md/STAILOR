#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Stub for xmlMallocAtomic */
void* xmlMallocAtomic(size_t size) {
    return malloc(size);
}

/* Stub for xmlErrMemory */
void xmlErrMemory(void* ctxt, const char* extra) {
    /* Do nothing */
}

/* Stub for xmlFree */
void xmlFree(void* ptr) {
    free(ptr);
}

/* Stub for xmlRealloc */
void* xmlRealloc(void* ptr, size_t size) {
    return realloc(ptr, size);
}

/* Function prototype from parser.c that contains the target line */
void* target_function(void* ctxt, const char* buf, int len, char c) {
    int max;
    xmlChar* buffer;
    
    max = len * 2;
    
    buffer = (xmlChar*) xmlMallocAtomic(max);
    if (buffer == NULL) {
        xmlErrMemory(ctxt, NULL);
        return NULL;
    }
    
    /* TARGET LINE 2998: memcpy(buffer, buf, len); */
    memcpy(buffer, buf, len);
    
    /* Vulnerability assertion: ensure len doesn't exceed allocated buffer size */
    SAILR_ASSERT(len <= max);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    while ((c != 0) && (c != ':')) {
        if (len + 10 > max) {
            xmlChar* tmp;
            max *= 2;
            tmp = (xmlChar*) xmlRealloc(buffer, max);
            if (tmp == NULL) {
                xmlFree(buffer);
                return NULL;
            }
            buffer = tmp;
        }
        /* Simplified loop to avoid infinite execution */
        break;
    }
    
    xmlFree(buffer);
    return NULL;
}

int main(void) {
    void* ctxt;
    char buf[1024];
    int len;
    char c;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&ctxt, sizeof(ctxt), "ctxt");
    klee_make_symbolic(buf, sizeof(buf), "buf");
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&c, sizeof(c), "c");
    
    /* Constrain inputs to reasonable ranges */
    klee_assume(len >= 0);
    klee_assume(len <= 1024);  /* buf size */
    
    /* Call the target function */
    target_function(ctxt, buf, len, c);
    
    return 0;
}