#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal definitions to compile the target function */
typedef struct _xmlBuffer xmlBuffer;
struct _xmlBuffer {
    char *content;
    unsigned int use;
    unsigned int size;
};

typedef enum {
    XML_ERR_NO_MEMORY = -1
} xmlError;

/* Stub for xmlBufferResize */
int xmlBufferResize(xmlBuffer *buf, unsigned int size) {
    if (size == 0) return 0;
    char *new_content = malloc(size);
    if (!new_content) return 0;
    if (buf->content && buf->use > 0) {
        unsigned int copy_len = buf->use < size ? buf->use : size - 1;
        memcpy(new_content, buf->content, copy_len);
        new_content[copy_len] = 0;
        buf->use = copy_len;
    } else {
        buf->use = 0;
        new_content[0] = 0;
    }
    free(buf->content);
    buf->content = new_content;
    buf->size = size;
    return 1;
}

/* Stub for xmlTreeErrMemory */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing */
}

/* Target function from tree.c:7635 (simplified signature) */
int xmlBufferAdd(xmlBuffer *buf, const char *str, int len) {
    unsigned int needSize;
    
    if (buf == NULL || str == NULL) return -1;
    if (len < 0) return -1;
    
    if (buf->size == 0) {
        if (!xmlBufferResize(buf, len + 1)) {
            xmlTreeErrMemory("growing buffer");
            return XML_ERR_NO_MEMORY;
        }
    } else if (buf->use + len + 1 > buf->size) {
        needSize = buf->use + len + 1;
        if (!xmlBufferResize(buf, needSize)) {
            xmlTreeErrMemory("growing buffer");
            return XML_ERR_NO_MEMORY;
        }
    }
    
    /* TARGET LINE: 7635 */
    memmove(&buf->content[buf->use], str, len);
    
    /* Vulnerability assertion: ensure len doesn't exceed available buffer space */
    SAILR_ASSERT(buf->use + len < buf->size);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    buf->use += len;
    buf->content[buf->use] = 0;
    return 0;
}

int main(void) {
    xmlBuffer buf;
    char str[256];
    int len;
    
    /* Initialize buffer symbolically */
    buf.content = NULL;
    buf.use = 0;
    buf.size = 0;
    
    /* Make inputs symbolic */
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_make_symbolic(str, sizeof(str), "str");
    
    /* Constrain len to reasonable bounds for symbolic execution */
    klee_assume(len >= 0);
    klee_assume(len < 256);
    
    /* Ensure buffer can be allocated */
    klee_assume(len >= 0);
    
    /* Call the target function */
    xmlBufferAdd(&buf, str, len);
    
    /* Cleanup */
    if (buf.content) {
        free(buf.content);
    }
    
    return 0;
}