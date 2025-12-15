#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed from libxml2 */
typedef struct _xmlBuffer xmlBuffer;
struct _xmlBuffer {
    char *content;
    char *contentIO;
    unsigned int use;
    unsigned int size;
    unsigned int alloc;
};

#define XML_BUFFER_ALLOC_IO 2

/* Function prototype from tree.c */
int xmlBufferAdd(xmlBuffer *buf, const char *str, int len);

/* Stub implementation focusing on the target path */
int xmlBufferAdd(xmlBuffer *buf, const char *str, int len) {
    if ((buf->alloc == XML_BUFFER_ALLOC_IO) && (buf->contentIO != NULL)) {
        size_t start_buf = buf->content - buf->contentIO;

        if (start_buf > (unsigned int) len) {
            /*
             * We can add it in the space previously shrunk
             */
            buf->content -= len;
            /* TARGET LINE 7688 */
            memmove(&buf->content[0], str, len);
            
            /* VULNERABILITY ASSERTION: ensure len doesn't exceed available buffer */
            SAILR_ASSERT(len <= buf->size);
            
            /* REACHABILITY ASSERTION */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            
            buf->use += len;
            buf->size += len;
            buf->content[buf->use] = 0;
            return(0);
        }
    }
    return -1;
}

int main(void) {
    xmlBuffer *buf = malloc(sizeof(xmlBuffer));
    if (!buf) return 1;
    
    /* Make buffer fields symbolic */
    klee_make_symbolic(&buf->alloc, sizeof(buf->alloc), "buf_alloc");
    klee_make_symbolic(&buf->use, sizeof(buf->use), "buf_use");
    klee_make_symbolic(&buf->size, sizeof(buf->size), "buf_size");
    
    /* Constrain alloc to be XML_BUFFER_ALLOC_IO */
    klee_assume(buf->alloc == XML_BUFFER_ALLOC_IO);
    
    /* Allocate contentIO buffer */
    buf->contentIO = malloc(4096);
    if (!buf->contentIO) {
        free(buf);
        return 1;
    }
    
    /* Make content pointer symbolic relative to contentIO */
    unsigned int content_offset;
    klee_make_symbolic(&content_offset, sizeof(content_offset), "content_offset");
    klee_assume(content_offset < 4096);
    buf->content = buf->contentIO + content_offset;
    
    /* Make len symbolic */
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Constrain len to be positive for memmove */
    klee_assume(len > 0);
    
    /* Constrain start_buf > len for entering the target branch */
    size_t start_buf = buf->content - buf->contentIO;
    klee_assume(start_buf > (unsigned int)len);
    
    /* Make str symbolic */
    char *str = malloc(len);
    if (!str) {
        free(buf->contentIO);
        free(buf);
        return 1;
    }
    klee_make_symbolic(str, len, "str");
    
    /* Call the function */
    xmlBufferAdd(buf, str, len);
    
    /* Cleanup */
    free(str);
    free(buf->contentIO);
    free(buf);
    
    return 0;
}