#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub for xmlMallocAtomic */
void* xmlMallocAtomic(size_t size) {
    return malloc(size);
}

/* Minimal stub for xmlFree */
void xmlFree(void* ptr) {
    free(ptr);
}

/* Minimal stub for xmlBufMemoryError */
void xmlBufMemoryError(void* buf, const char* msg) {
    (void)buf;
    (void)msg;
}

/* Simplified xmlBuf structure from libxml2 */
typedef struct _xmlBuf {
    xmlChar* content;
    size_t use;
    size_t size;
} xmlBuf;

/* Simplified version of xmlBufGrow from buf.c that reaches line 749 */
static int xmlBufGrowInternal(xmlBuf* buf, size_t newSize) {
    xmlChar* rebuf = NULL;

    if (buf->size >= newSize) {
        return 0;
    }

    if (buf->size > 0) {
        if ((buf->use < 40) && (buf->size > 100)) {
            rebuf = (xmlChar*)xmlMallocAtomic(newSize);
            if (rebuf != NULL) {
                /* TARGET LINE 749: memcpy(rebuf, buf->content, buf->use); */
                memcpy(rebuf, buf->content, buf->use);
                xmlFree(buf->content);
                rebuf[buf->use] = 0;
                
                /* VULNERABILITY ASSERTION: buf->use must not exceed newSize */
                SAILR_ASSERT(buf->use < newSize);
                
                /* REACHABILITY ASSERTION */
                klee_assert(0 && "SAILR_REACH_ASSERT");
            }
        }
    }

    if (rebuf == NULL) {
        xmlBufMemoryError(buf, "growing buffer");
        return 0;
    }

    buf->content = rebuf;
    buf->size = newSize;
    return 1;
}

int main(void) {
    xmlBuf buf;
    
    /* Make buffer content symbolic */
    buf.content = (xmlChar*)malloc(128);
    klee_make_symbolic(buf.content, 128, "buf_content");
    
    /* Symbolic buffer use (amount of data currently in buffer) */
    klee_make_symbolic(&buf.use, sizeof(buf.use), "buf_use");
    
    /* Symbolic buffer size (current allocated size) */
    klee_make_symbolic(&buf.size, sizeof(buf.size), "buf_size");
    
    /* Symbolic newSize for growth */
    size_t newSize;
    klee_make_symbolic(&newSize, sizeof(newSize), "newSize");
    
    /* Assume conditions to reach the vulnerable path:
       1. Current size is less than newSize (need to grow)
       2. Current size > 0
       3. buf->use < 40 AND buf->size > 100 (from the if condition)
       4. newSize > 0 (for allocation)
    */
    klee_assume(buf.size < newSize);
    klee_assume(buf.size > 0);
    klee_assume(buf.use < 40);
    klee_assume(buf.size > 100);
    klee_assume(newSize > 0);
    
    /* Also assume buf->use is within bounds of current allocation */
    klee_assume(buf.use <= buf.size);
    
    /* Call the function that contains the vulnerable memcpy */
    xmlBufGrowInternal(&buf, newSize);
    
    /* Cleanup */
    free(buf.content);
    
    return 0;
}