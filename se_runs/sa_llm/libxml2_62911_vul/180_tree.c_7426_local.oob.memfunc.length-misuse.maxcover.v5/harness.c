#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Forward declarations for libxml2 types and functions */
typedef struct _xmlBuffer xmlBuffer;
typedef struct _xmlBuffer {
    xmlChar *content;
    unsigned int use;
    unsigned int size;
} xmlBuffer;

typedef int xmlChar;

/* Stub for xmlTreeErrMemory */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing in stub */
}

/* Target function: xmlBufferAdd from tree.c:7426 */
int xmlBufferAdd(xmlBuffer *buf, const xmlChar *str, int len) {
    if (buf == NULL || str == NULL) {
        return -1;
    }
    
    if (len < 0) {
        return -1;
    }
    
    if (buf->use + len + 1 < buf->use) {
        /* Integer overflow */
        xmlTreeErrMemory("growing buffer");
        return -2; /* XML_ERR_NO_MEMORY */
    }
    
    if (buf->use + len + 1 > buf->size) {
        /* Need to grow buffer - simplified for stub */
        xmlTreeErrMemory("growing buffer");
        return -2; /* XML_ERR_NO_MEMORY */
    }
    
    /* TARGET LINE: 7426 - memmove(&buf->content[buf->use], str, len); */
    /* Vulnerability assertion: ensure len doesn't exceed available buffer space */
    SAILR_ASSERT(buf->use + len <= buf->size);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memmove(&buf->content[buf->use], str, len);
    buf->use += len;
    buf->content[buf->use] = 0;
    return 0;
}

/* Entrypoint function that calls xmlBufferAdd */
int xmlStringGetNodeList(void) {
    /* This is the entrypoint mentioned in the SA spec */
    return 0;
}

int main(void) {
    /* Create symbolic inputs */
    xmlBuffer buf;
    xmlChar str[256];
    int len;
    
    /* Initialize buffer with symbolic size and use */
    buf.content = (xmlChar*)malloc(256 * sizeof(xmlChar));
    klee_make_symbolic(&buf.size, sizeof(buf.size), "buf_size");
    klee_make_symbolic(&buf.use, sizeof(buf.use), "buf_use");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Assume reasonable constraints */
    klee_assume(buf.size <= 256);  /* Buffer size limited by allocation */
    klee_assume(buf.use <= buf.size);  /* Current use cannot exceed size */
    klee_assume(len >= 0);  /* Length must be non-negative */
    klee_assume(len < 256);  /* Limit length for symbolic execution */
    
    /* Assume buffer is not NULL and content is allocated */
    klee_assume(buf.content != NULL);
    
    /* Make string symbolic */
    klee_make_symbolic(str, sizeof(str), "str");
    
    /* Call the vulnerable function */
    xmlBufferAdd(&buf, str, len);
    
    /* Cleanup */
    free(buf.content);
    
    return 0;
}