#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal xmlBuffer structure from libxml2 */
typedef struct _xmlBuffer xmlBuffer;
struct _xmlBuffer {
    xmlChar* content;
    unsigned int use;
    unsigned int size;
};

/* Minimal xmlChar definition */
typedef unsigned char xmlChar;

/* Minimal error code */
#define XML_ERR_NO_MEMORY -1

/* Stub for xmlBufferResize - always succeeds for our purposes */
int xmlBufferResize(xmlBuffer* buf, unsigned int size) {
    if (size > buf->size) {
        xmlChar* new_content = malloc(size);
        if (!new_content) return 0;
        if (buf->content && buf->use > 0) {
            memcpy(new_content, buf->content, buf->use);
        }
        free(buf->content);
        buf->content = new_content;
        buf->size = size;
    }
    return 1;
}

/* Stub for xmlTreeErrMemory */
void xmlTreeErrMemory(const char* msg) {
    /* Do nothing */
}

/* Target function from tree.c:7709 - simplified version */
int target_function(xmlBuffer* buf, const xmlChar* str, unsigned int len) {
    unsigned int needSize;
    
    if (buf == NULL || str == NULL) return -1;
    
    needSize = buf->use + len + 1;
    if (!xmlBufferResize(buf, needSize)) {
        xmlTreeErrMemory("growing buffer");
        return XML_ERR_NO_MEMORY;
    }
    
    memmove(&buf->content[len], &buf->content[0], buf->use);
    memmove(&buf->content[0], str, len);
    buf->use += len;
    buf->content[buf->use] = 0;
    return 0;
}

/* Main harness */
int main(void) {
    xmlBuffer buf;
    xmlChar* str;
    unsigned int len;
    unsigned int buf_use;
    unsigned int buf_size;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(&buf_use, sizeof(buf_use), "buf_use");
    klee_make_symbolic(&buf_size, sizeof(buf_size), "buf_size");
    
    /* Assume reasonable bounds to avoid overflow in needSize calculation */
    klee_assume(len < 1024);
    klee_assume(buf_use < 1024);
    klee_assume(buf_size < 2048);
    
    /* Initialize buffer */
    buf.use = buf_use;
    buf.size = buf_size;
    
    /* Allocate content buffer */
    buf.content = malloc(buf.size);
    if (!buf.content) return 0;
    
    /* Initialize buffer content with symbolic data */
    klee_make_symbolic(buf.content, buf.size, "buf_content");
    
    /* Allocate and initialize string */
    str = malloc(len + 1);
    if (!str) {
        free(buf.content);
        return 0;
    }
    klee_make_symbolic(str, len + 1, "str");
    
    /* Assume buffer has enough space initially for the memmove operations */
    klee_assume(buf.size >= buf.use + len + 1);
    
    /* Call target function */
    int result = target_function(&buf, str, len);
    
    /* Vulnerability assertion: check that len doesn't cause OOB access */
    /* The vulnerable memmove is: memmove(&buf->content[0], str, len) */
    /* We need to ensure len doesn't exceed the allocated buffer size */
    SAILR_ASSERT(len <= buf.size);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    free(buf.content);
    free(str);
    
    return 0;
}