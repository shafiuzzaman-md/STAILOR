#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations of types and functions needed from libxml2 */
typedef struct _xmlBuf xmlBuf;
typedef xmlBuf *xmlBufPtr;
typedef struct _xmlCharEncodingHandler xmlCharEncodingHandler;
typedef xmlCharEncodingHandler *xmlCharEncodingHandlerPtr;

typedef struct _xmlOutputBuffer {
    void *unused1;
    xmlBufPtr buffer;
    xmlCharEncodingHandlerPtr encoder;
    void *unused2;
    void *unused3;
    void *unused4;
} xmlOutputBuffer;

typedef xmlOutputBuffer *xmlOutputBufferPtr;

/* Stub implementations of libxml2 functions */
void xmlIOErrMemory(const char *msg) {
    (void)msg;
}

void *xmlMalloc(size_t size) {
    return malloc(size);
}

void xmlFree(void *ptr) {
    free(ptr);
}

xmlBufPtr xmlBufCreate(void) {
    xmlBufPtr buf = (xmlBufPtr)malloc(sizeof(xmlBuf));
    if (buf) {
        klee_make_symbolic(buf, sizeof(xmlBuf), "xmlBuf");
    }
    return buf;
}

void xmlBufSetAllocationScheme(xmlBufPtr buf, int scheme) {
    (void)buf;
    (void)scheme;
}

/* Target function from xmlIO.c */
xmlOutputBufferPtr xmlAllocOutputBuffer(xmlCharEncodingHandlerPtr encoder) {
    xmlOutputBufferPtr ret;

    ret = (xmlOutputBufferPtr) xmlMalloc(sizeof(xmlOutputBuffer));
    if (ret == NULL) {
        xmlIOErrMemory("creating output buffer");
        return(NULL);
    }
    
    /* TARGET LINE 2370: memset(ret, 0, sizeof(xmlOutputBuffer)); */
    /* Vulnerability assertion: ensure ret points to at least sizeof(xmlOutputBuffer) allocated bytes */
    SAILR_ASSERT(ret != NULL && sizeof(xmlOutputBuffer) <= malloc_usable_size(ret));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(ret, 0, sizeof(xmlOutputBuffer));
    ret->buffer = xmlBufCreate();
    if (ret->buffer == NULL) {
        xmlFree(ret);
        return(NULL);
    }
    xmlBufSetAllocationScheme(ret->buffer, 0); /* XML_BUFFER_ALLOC_DOUBLEIT = 0 */

    ret->encoder = encoder;
    return ret;
}

/* Helper to get usable size of malloc'd memory (simplified for KLEE) */
size_t malloc_usable_size(void *ptr) {
    if (!ptr) return 0;
    /* In symbolic execution, we assume the allocation is at least the requested size */
    return __builtin_object_size(ptr, 0);
}

int main(void) {
    xmlCharEncodingHandlerPtr encoder;
    
    /* Make encoder symbolic to explore different paths */
    klee_make_symbolic(&encoder, sizeof(encoder), "encoder");
    
    /* Call the target function */
    xmlOutputBufferPtr buf = xmlAllocOutputBuffer(encoder);
    
    /* Clean up if allocation succeeded */
    if (buf) {
        if (buf->buffer) {
            free(buf->buffer);
        }
        free(buf);
    }
    
    return 0;
}