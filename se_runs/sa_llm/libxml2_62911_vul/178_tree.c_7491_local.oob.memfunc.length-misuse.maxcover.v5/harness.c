#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal stub for xmlBuf structure */
typedef struct _xmlBuf xmlBuf;
struct _xmlBuf {
    char *content;
    size_t size;
    size_t use;
};

/* Minimal stub for xmlTreeErrMemory */
void xmlTreeErrMemory(const char *msg) {
    /* Do nothing for stub */
}

/* Minimal stub for xmlStringGetNodeList */
int xmlStringGetNodeList(xmlBuf *buf, const char *str, int len) {
    if (buf == NULL || str == NULL) {
        return -1;
    }
    
    if (len < 0) {
        return -1;
    }
    
    /* Check if buffer needs to grow */
    if (buf->use + len + 1 > buf->size) {
        size_t new_size = buf->use + len + 1;
        char *new_content = malloc(new_size);
        if (new_content == NULL) {
            xmlTreeErrMemory("growing buffer");
            return -2; /* XML_ERR_NO_MEMORY */
        }
        
        if (buf->content != NULL) {
            memcpy(new_content, buf->content, buf->use);
            free(buf->content);
        }
        buf->content = new_content;
        buf->size = new_size;
    }
    
    /* This is the target line 7491 from tree.c */
    memmove(&buf->content[len], &buf->content[0], buf->use);
    
    /* Vulnerability assertion: ensure len doesn't exceed buffer bounds */
    SAILR_ASSERT(len <= buf->size);
    
    /* Reachability marker */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    memmove(&buf->content[0], str, len);
    buf->use += len;
    buf->content[buf->use] = 0;
    return 0;
}

int main(void) {
    /* Symbolic inputs */
    xmlBuf buf;
    char str_data[256];
    int len;
    
    /* Initialize buffer with symbolic size */
    klee_make_symbolic(&buf.size, sizeof(buf.size), "buf_size");
    klee_assume(buf.size > 0);
    klee_assume(buf.size <= 4096); /* Reasonable upper bound */
    
    /* Allocate buffer content */
    buf.content = malloc(buf.size);
    if (buf.content == NULL) {
        return 1;
    }
    
    /* Symbolic initial buffer usage */
    klee_make_symbolic(&buf.use, sizeof(buf.use), "buf_use");
    klee_assume(buf.use < buf.size);
    klee_assume(buf.use >= 0);
    
    /* Initialize buffer content symbolically */
    klee_make_symbolic(buf.content, buf.use, "initial_content");
    
    /* Symbolic string length */
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0);
    klee_assume(len < 256); /* Reasonable upper bound */
    
    /* Symbolic string data */
    klee_make_symbolic(str_data, len, "str_data");
    
    /* Call the target function */
    xmlStringGetNodeList(&buf, str_data, len);
    
    /* Cleanup */
    free(buf.content);
    
    return 0;
}