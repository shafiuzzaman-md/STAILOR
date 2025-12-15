#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed from libxml2 */
typedef unsigned char xmlChar;
typedef struct _xmlBuffer xmlBuffer;
struct _xmlBuffer {
    xmlChar *content;
    xmlChar *contentIO;
    unsigned int use;
    unsigned int size;
    unsigned int alloc;
};

/* Stub for xmlTreeErrMemory */
void xmlTreeErrMemory(const char *msg) {
    (void)msg;
}

/* Stub for xmlRealloc */
void* xmlRealloc(void *ptr, size_t size) {
    return realloc(ptr, size);
}

/* Target function from tree.c (simplified) */
int xmlBufferGrow(xmlBuffer *buf, unsigned int newSize) {
    xmlChar *rebuf;
    unsigned int start_buf;

    if ((buf->alloc == 2) && (buf->contentIO != NULL)) {  /* XML_BUFFER_ALLOC_IO = 2 */
        start_buf = buf->content - buf->contentIO;

        if (start_buf > newSize) {
            /* move data back to start */
            memmove(buf->contentIO, buf->content, buf->use);  /* TARGET LINE */
            buf->content = buf->contentIO;
            buf->content[buf->use] = 0;
            buf->size += start_buf;
        } else {
            rebuf = (xmlChar *) xmlRealloc(buf->contentIO, start_buf + newSize);
            if (rebuf == NULL) {
                xmlTreeErrMemory("growing buffer");
                return 0;
            }
        }
    }
    return 1;
}

int main(void) {
    xmlBuffer buf;
    unsigned int newSize;
    unsigned int buffer_size;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&buf.alloc, sizeof(buf.alloc), "buf_alloc");
    klee_make_symbolic(&newSize, sizeof(newSize), "newSize");
    klee_make_symbolic(&buf.use, sizeof(buf.use), "buf_use");
    klee_make_symbolic(&buffer_size, sizeof(buffer_size), "buffer_size");
    
    /* Allocate contentIO buffer */
    buf.contentIO = (xmlChar*)malloc(buffer_size);
    klee_assume(buf.contentIO != NULL);
    
    /* Make content point somewhere within contentIO buffer */
    unsigned int content_offset;
    klee_make_symbolic(&content_offset, sizeof(content_offset), "content_offset");
    klee_assume(content_offset < buffer_size);
    buf.content = buf.contentIO + content_offset;
    
    /* Constrain alloc to be XML_BUFFER_ALLOC_IO (2) */
    klee_assume(buf.alloc == 2);
    
    /* Constrain start_buf > newSize to take the vulnerable path */
    unsigned int start_buf = buf.content - buf.contentIO;
    klee_assume(start_buf > newSize);
    
    /* Vulnerability assertion: ensure memmove doesn't overflow contentIO buffer */
    /* Condition: buf.use <= (buffer_size - 0) since we're moving to start of buffer */
    SAILR_ASSERT(buf.use <= buffer_size);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Call the target function */
    xmlBufferGrow(&buf, newSize);
    
    /* Cleanup */
    free(buf.contentIO);
    
    return 0;
}