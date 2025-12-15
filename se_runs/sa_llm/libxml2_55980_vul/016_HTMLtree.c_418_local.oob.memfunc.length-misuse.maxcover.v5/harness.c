#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions needed */
typedef struct _xmlBuf xmlBuf;
typedef xmlBuf* xmlBufPtr;

typedef struct _xmlOutputBuffer {
    xmlBufPtr buffer;
    void* encoder;
    void* writecallback;
    void* closecallback;
    void* context;
    int written;
} xmlOutputBuffer;
typedef xmlOutputBuffer* xmlOutputBufferPtr;

/* Stub implementations of libxml2 functions */
xmlBufPtr xmlBufCreate(void) {
    xmlBufPtr buf = (xmlBufPtr)malloc(sizeof(struct _xmlBuf));
    if (buf) {
        /* Initialize minimal state */
        klee_make_symbolic(buf, sizeof(struct _xmlBuf), "buf_state");
    }
    return buf;
}

void* xmlMalloc(size_t size) {
    void* ptr = malloc(size);
    klee_make_symbolic(&ptr, sizeof(ptr), "malloc_ptr");
    return ptr;
}

void htmlSaveErrMemory(const char* msg) {
    /* Stub - do nothing */
}

int xmlBufUse(xmlBufPtr buf) {
    int use;
    klee_make_symbolic(&use, sizeof(use), "buf_use");
    klee_assume(use >= 0);
    return use;
}

/* Target function from HTMLtree.c - simplified to reach line 418 */
xmlOutputBufferPtr htmlCreateOutputBuffer(xmlBufPtr buf) {
    xmlOutputBufferPtr outbuf;
    
    if (buf == NULL) {
        return (xmlOutputBufferPtr)(-1);
    }
    
    outbuf = (xmlOutputBufferPtr)xmlMalloc(sizeof(xmlOutputBuffer));
    if (outbuf == NULL) {
        htmlSaveErrMemory("allocating HTML output buffer");
        return (xmlOutputBufferPtr)(-1);
    }
    
    /* TARGET LINE 418: memset(outbuf, 0, sizeof(xmlOutputBuffer)); */
    /* Vulnerability assertion: ensure size argument doesn't exceed allocation */
    SAILR_ASSERT(sizeof(xmlOutputBuffer) <= malloc_usable_size(outbuf));
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memset(outbuf, 0, sizeof(xmlOutputBuffer));
    outbuf->buffer = buf;
    outbuf->encoder = NULL;
    outbuf->writecallback = NULL;
    outbuf->closecallback = NULL;
    outbuf->context = NULL;
    outbuf->written = 0;
    
    return outbuf;
}

/* Helper to get allocation size - KLEE builtin */
extern size_t malloc_usable_size(void *ptr);

int main(void) {
    xmlBufPtr buf;
    xmlOutputBufferPtr outbuf;
    
    /* Make buffer symbolic to explore all paths */
    buf = xmlBufCreate();
    
    /* Call the target function */
    outbuf = htmlCreateOutputBuffer(buf);
    
    /* Cleanup */
    if (buf) free(buf);
    if (outbuf && outbuf != (xmlOutputBufferPtr)(-1)) free(outbuf);
    
    return 0;
}