#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal definitions from libxml2 to make the code compile */
typedef struct _xmlBuffer xmlBuffer;
typedef xmlBuffer *xmlBufferPtr;

struct _xmlBuffer {
    xmlChar *content;
    xmlChar *contentIO;
    unsigned int use;
    unsigned int size;
    unsigned int alloc;
};

typedef char xmlChar;

#define XML_BUFFER_ALLOC_IO 0x02

/* Function prototype from buf.c */
void xmlBufferShrink(xmlBufferPtr buf, unsigned int len);

/* Stub implementation of xmlBufferShrink that focuses on the vulnerable path */
void xmlBufferShrink(xmlBufferPtr buf, unsigned int len) {
    if (buf == NULL) return;
    
    if (len == 0) return;
    
    if ((buf->alloc == XML_BUFFER_ALLOC_IO) && (buf->contentIO != NULL)) {
        size_t start_buf = buf->content - buf->contentIO;
        if (start_buf >= buf->size) {
            /* VULNERABLE LINE: memmove(buf->contentIO, &buf->content[0], buf->use); */
            
            /* Vulnerability assertion: buf->use must not exceed available buffer space */
            /* For memmove(dest, src, n), we need to ensure n doesn't exceed either 
               dest buffer size or src buffer size. Since dest is buf->contentIO and
               src is &buf->content[0], we need to check both bounds. */
            SAILR_ASSERT(buf->use <= (buf->size + start_buf) && buf->use <= buf->size);
            
            /* Reachability marker */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            
            /* Actual vulnerable code (simulated) */
            memmove(buf->contentIO, &buf->content[0], buf->use);
            buf->content = buf->contentIO;
            buf->content[buf->use] = 0;
            buf->size += start_buf;
        }
    }
}

int main(void) {
    /* Allocate and initialize buffer structure */
    xmlBuffer *buf = malloc(sizeof(xmlBuffer));
    if (buf == NULL) return 1;
    
    /* Make buffer fields symbolic to explore different states */
    klee_make_symbolic(&buf->alloc, sizeof(buf->alloc), "buf_alloc");
    klee_make_symbolic(&buf->use, sizeof(buf->use), "buf_use");
    klee_make_symbolic(&buf->size, sizeof(buf->size), "buf_size");
    
    /* Constrain values to reasonable ranges */
    klee_assume(buf->alloc == XML_BUFFER_ALLOC_IO);  /* Must be IO buffer type */
    klee_assume(buf->use <= 1024);  /* Reasonable upper bound */
    klee_assume(buf->size <= 1024); /* Reasonable upper bound */
    klee_assume(buf->use > 0);      /* Non-zero use for meaningful memmove */
    
    /* Allocate contentIO buffer */
    buf->contentIO = malloc(2048);  /* Allocate enough space */
    klee_assume(buf->contentIO != NULL);
    
    /* Make content point somewhere within contentIO buffer */
    size_t start_buf;
    klee_make_symbolic(&start_buf, sizeof(start_buf), "start_buf");
    
    /* Constrain start_buf to be >= buf->size (to enter the vulnerable branch) */
    klee_assume(start_buf >= buf->size);
    
    /* Ensure start_buf is within bounds of the allocated contentIO */
    klee_assume(start_buf < 2048);
    
    /* Set content pointer relative to contentIO */
    buf->content = buf->contentIO + start_buf;
    
    /* Call the function with arbitrary len (non-zero to enter the function) */
    unsigned int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len > 0);
    klee_assume(len <= buf->use);  /* len should be <= use for shrink operation */
    
    xmlBufferShrink(buf, len);
    
    /* Cleanup */
    free(buf->contentIO);
    free(buf);
    
    return 0;
}