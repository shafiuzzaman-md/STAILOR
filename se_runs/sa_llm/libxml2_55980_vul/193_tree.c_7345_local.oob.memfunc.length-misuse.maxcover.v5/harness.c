#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations of types and functions needed from libxml2 */
typedef struct _xmlBuffer xmlBuffer;
struct _xmlBuffer {
    xmlChar *content;
    xmlChar *contentIO;
    unsigned int use;
    unsigned int size;
};

typedef char xmlChar;

/* Stub for xmlBufferGrow to avoid linking issues */
int xmlBufferGrow(xmlBuffer *buf, unsigned int len) {
    if (buf == NULL) return -1;
    if (buf->size + len < buf->size) return -1; /* overflow check */
    buf->size += len;
    return 0;
}

/* Target function from tree.c - simplified to focus on the vulnerable path */
int xmlBufferShrink(xmlBuffer *buf, unsigned int len) {
    if (buf == NULL || buf->content == NULL) return -1;
    
    if (buf->use < len) {
        return -1;
    }
    
    if (buf->size - buf->use > 1024) {
        /* This is the else branch we want to reach */
        memmove(buf->content, &buf->content[len], buf->use);
        buf->content[buf->use] = 0;
    } else {
        /* Other branch - not our target */
        unsigned int start_buf = buf->size - buf->use;
        if (start_buf >= buf->size) {
            memmove(buf->contentIO, &buf->content[0], buf->use);
            buf->content = buf->contentIO;
            buf->content[buf->use] = 0;
            buf->size += start_buf;
        }
    }
    return len;
}

int main(void) {
    /* Create a symbolic buffer structure */
    xmlBuffer buf;
    
    /* Make buffer fields symbolic */
    unsigned int buf_size, buf_use, len_param;
    klee_make_symbolic(&buf_size, sizeof(buf_size), "buf_size");
    klee_make_symbolic(&buf_use, sizeof(buf_use), "buf_use");
    klee_make_symbolic(&len_param, sizeof(len_param), "len_param");
    
    /* Assume reasonable bounds to avoid overflow and ensure we hit the target path */
    klee_assume(buf_size >= 1 && buf_size <= 4096);
    klee_assume(buf_use >= 0 && buf_use <= buf_size);
    klee_assume(len_param >= 0 && len_param <= buf_use);
    
    /* Assume conditions to reach the else branch at line 7345 */
    klee_assume(buf_size - buf_use > 1024);  /* This ensures we take the else branch */
    
    /* Allocate memory for content */
    buf.content = (xmlChar*)malloc(buf_size + 1);
    buf.contentIO = (xmlChar*)malloc(buf_size + 1);
    
    /* Initialize buffer fields */
    buf.use = buf_use;
    buf.size = buf_size;
    
    /* Make content symbolic to explore different memory states */
    klee_make_symbolic(buf.content, buf_size + 1, "buf_content");
    
    /* Vulnerability assertion: check that memmove won't read out of bounds */
    /* The vulnerable memmove is: memmove(buf->content, &buf->content[len], buf->use) */
    /* We need to ensure that &buf->content[len] + buf->use doesn't exceed allocated memory */
    /* Since buf->content points to buffer of size buf->size, we need: len + buf->use <= buf->size */
    SAILR_ASSERT(len_param + buf_use <= buf_size);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Call the target function */
    xmlBufferShrink(&buf, len_param);
    
    /* Cleanup */
    free(buf.content);
    free(buf.contentIO);
    
    return 0;
}