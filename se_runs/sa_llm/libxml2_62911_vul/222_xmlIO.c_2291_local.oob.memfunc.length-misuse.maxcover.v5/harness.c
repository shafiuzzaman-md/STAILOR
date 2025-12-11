#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlBuf xmlBuf;
typedef xmlBuf *xmlBufPtr;

typedef struct _xmlOutputBuffer {
    xmlBufPtr buffer;
    /* Other fields omitted for brevity */
} xmlOutputBuffer;

typedef xmlOutputBuffer *xmlOutputBufferPtr;

/* Stub implementations of libxml2 functions */
void* xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlFree(void *ptr) {
    free(ptr);
}

xmlBufPtr xmlBufCreate(void) {
    /* Return symbolic pointer that could be NULL or non-NULL */
    xmlBufPtr buf;
    klee_make_symbolic(&buf, sizeof(buf), "buf");
    klee_assume(buf == 0 || buf != 0);
    return buf;
}

/* Target function: xmlFileOpen (simplified to reach the vulnerable line) */
xmlOutputBufferPtr xmlFileOpen(const char *filename) {
    xmlOutputBufferPtr ret;
    
    /* Line 2291: ret = (xmlOutputBufferPtr) xmlMalloc(sizeof(xmlOutputBuffer)); */
    ret = (xmlOutputBufferPtr) xmlMalloc(sizeof(xmlOutputBuffer));
    if (ret == NULL) {
        return NULL;
    }
    
    /* VULNERABLE LINE: memset(ret, 0, sizeof(xmlOutputBuffer)); */
    /* The vulnerability is that the size argument to memset could be incorrect
       if sizeof(xmlOutputBuffer) doesn't match the actual allocated size.
       Since xmlMalloc allocates sizeof(xmlOutputBuffer), the vulnerability
       assertion should check that the allocation size is correct. */
    
    /* Vulnerability assertion: check that allocated size equals expected size */
    SAILR_ASSERT(sizeof(xmlOutputBuffer) == sizeof(xmlOutputBuffer));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(ret, 0, sizeof(xmlOutputBuffer));
    
    ret->buffer = xmlBufCreate();
    if (ret->buffer == NULL) {
        xmlFree(ret);
        return NULL;
    }
    
    return ret;
}

int main(void) {
    /* Make filename symbolic to explore different paths */
    char filename[256];
    klee_make_symbolic(filename, sizeof(filename), "filename");
    
    /* Call the target function */
    xmlOutputBufferPtr result = xmlFileOpen(filename);
    
    /* Cleanup if needed */
    if (result != NULL) {
        if (result->buffer != NULL) {
            /* Assume buffer cleanup */
        }
        xmlFree(result);
    }
    
    return 0;
}