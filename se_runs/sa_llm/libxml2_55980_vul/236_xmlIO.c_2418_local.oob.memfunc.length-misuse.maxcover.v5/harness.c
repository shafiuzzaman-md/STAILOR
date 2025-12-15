#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal type definitions needed for the harness */
typedef struct _xmlBuf xmlBuf;
typedef struct _xmlBuf {
    size_t size;
    char *content;
} xmlBuf;

typedef struct _xmlOutputBuffer xmlOutputBuffer;
typedef struct _xmlOutputBuffer {
    xmlBuf *buffer;
    /* Other fields omitted for brevity */
} xmlOutputBuffer;

typedef void* xmlCharEncodingHandlerPtr;

/* Stub functions to avoid linking with libxml2 */
void xmlIOErrMemory(const char *msg) {
    /* Do nothing */
}

void* xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlFree(void *ptr) {
    free(ptr);
}

xmlBuf* xmlBufCreate(void) {
    xmlBuf *buf = (xmlBuf*)malloc(sizeof(xmlBuf));
    if (buf) {
        buf->size = 0;
        buf->content = NULL;
    }
    return buf;
}

/* Target function declaration */
xmlOutputBufferPtr xmlAllocOutputBufferInternal(xmlCharEncodingHandlerPtr encoder);

/* Target function implementation */
xmlOutputBufferPtr xmlAllocOutputBufferInternal(xmlCharEncodingHandlerPtr encoder) {
    xmlOutputBufferPtr ret;

    ret = (xmlOutputBufferPtr) xmlMalloc(sizeof(xmlOutputBuffer));
    if (ret == NULL) {
        xmlIOErrMemory("creating output buffer");
        return(NULL);
    }
    
    /* TARGET LINE 2418 - memset with sizeof(xmlOutputBuffer) */
    memset(ret, 0, sizeof(xmlOutputBuffer));
    
    /* Vulnerability assertion: ensure ret points to valid memory of at least sizeof(xmlOutputBuffer) bytes */
    SAILR_ASSERT(ret != NULL && sizeof(xmlOutputBuffer) > 0);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    ret->buffer = xmlBufCreate();
    if (ret->buffer == NULL) {
        xmlFree(ret);
        return(NULL);
    }

    return ret;
}

int main(void) {
    /* Make encoder symbolic to explore different paths */
    xmlCharEncodingHandlerPtr encoder;
    klee_make_symbolic(&encoder, sizeof(encoder), "encoder");
    
    /* Call the target function */
    xmlOutputBufferPtr result = xmlAllocOutputBufferInternal(encoder);
    
    /* Cleanup if needed */
    if (result) {
        if (result->buffer) {
            free(result->buffer);
        }
        free(result);
    }
    
    return 0;
}