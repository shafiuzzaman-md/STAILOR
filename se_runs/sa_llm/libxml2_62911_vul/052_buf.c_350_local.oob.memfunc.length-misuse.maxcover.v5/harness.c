#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal definitions to satisfy the code path */
typedef struct _xmlBuf xmlBuf;
struct _xmlBuf {
    char *content;      /* The buffer content */
    char *contentIO;    /* The IO buffer */
    size_t size;        /* The buffer size */
    size_t use;         /* The buffer length used */
    int alloc;          /* The alloc scheme */
};

#define XML_BUFFER_ALLOC_IO 1

/* Stub for xmlBufAdd - the entrypoint that leads to the target location */
void xmlBufAdd(xmlBuf *buf, const char *str, int len) {
    /* Simplified implementation that reaches the target memmove call */
    if (buf == NULL || str == NULL) return;
    
    /* Simulate buffer growth logic that leads to the IO buffer adjustment */
    if ((buf->alloc == XML_BUFFER_ALLOC_IO) && (buf->contentIO != NULL)) {
        size_t start_buf = buf->content - buf->contentIO;
        if (start_buf >= buf->size) {
            /* TARGET LINE 350: memmove(buf->contentIO, &buf->content[0], buf->use); */
            
            /* VULNERABILITY ASSERTION: buf->use must not exceed available space */
            /* For memmove(dest, src, n), we need to ensure n doesn't exceed 
               either source or destination buffer bounds. Here:
               - dest = buf->contentIO (size = buf->size + start_buf?)
               - src = &buf->content[0] (valid for at least buf->use bytes)
               - n = buf->use
               
               The most critical check: buf->use should not exceed the 
               source buffer's available data, which is buf->use itself.
               But actually, the issue is that buf->use might be larger than
               the actual allocated space in either buffer.
               
               Since buf->content points somewhere inside buf->contentIO,
               and we're moving buf->use bytes from buf->content to buf->contentIO,
               we need: buf->use <= (buf->size - (buf->content - buf->contentIO))?
               
               Actually looking at the code: start_buf = buf->content - buf->contentIO
               and we have condition start_buf >= buf->size.
               
               The memmove copies buf->use bytes from buf->content to buf->contentIO.
               The source has at least buf->use bytes available (by definition).
               The destination buf->contentIO has size buf->size + start_buf 
               (since buf->size gets increased by start_buf after the move).
               
               So the vulnerability assertion should ensure the copy doesn't
               exceed destination bounds: buf->use <= (buf->size + start_buf) */
            SAILR_ASSERT(buf->use <= (buf->size + start_buf));
            
            /* REACHABILITY ASSERTION */
            klee_assert(0 && "SAILR_REACH_ASSERT");
            
            /* Original memmove call would be here */
            /* memmove(buf->contentIO, &buf->content[0], buf->use); */
        }
    }
}

int main(void) {
    /* Create a symbolic xmlBuf structure */
    xmlBuf *buf = malloc(sizeof(xmlBuf));
    if (buf == NULL) return 1;
    
    /* Make buffer fields symbolic */
    klee_make_symbolic(&buf->alloc, sizeof(buf->alloc), "buf_alloc");
    klee_make_symbolic(&buf->size, sizeof(buf->size), "buf_size");
    klee_make_symbolic(&buf->use, sizeof(buf->use), "buf_use");
    
    /* Allocate contentIO buffer */
    size_t max_io_size = 4096; /* Reasonable maximum */
    buf->contentIO = malloc(max_io_size);
    
    /* Make content point somewhere within contentIO */
    size_t start_buf;
    klee_make_symbolic(&start_buf, sizeof(start_buf), "start_buf");
    
    /* Constrain start_buf to be within max_io_size */
    klee_assume(start_buf < max_io_size);
    buf->content = buf->contentIO + start_buf;
    
    /* Constrain buf->use to be reasonable */
    klee_assume(buf->use <= max_io_size);
    
    /* Constrain buf->size to be reasonable */
    klee_assume(buf->size <= max_io_size);
    
    /* Constrain to reach the target path */
    klee_assume(buf->alloc == XML_BUFFER_ALLOC_IO);
    klee_assume(buf->contentIO != NULL);
    klee_assume(start_buf >= buf->size);
    
    /* Ensure buf->content points within contentIO bounds */
    klee_assume(buf->content >= buf->contentIO);
    klee_assume(buf->content < buf->contentIO + max_io_size);
    
    /* Call the entrypoint with dummy parameters */
    xmlBufAdd(buf, "test", 4);
    
    /* Cleanup */
    free(buf->contentIO);
    free(buf);
    
    return 0;
}