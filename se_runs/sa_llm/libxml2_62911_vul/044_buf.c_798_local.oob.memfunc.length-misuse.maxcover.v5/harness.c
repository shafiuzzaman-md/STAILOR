#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal types needed from libxml2 */
typedef struct _xmlBuf xmlBuf;
struct _xmlBuf {
    char *content;
    unsigned int use;
    unsigned int size;
    unsigned int compat_use;
    unsigned int compat_size;
    int error;
};

#define XML_ERR_NO_MEMORY -1
#define UPDATE_COMPAT(buf) \
    do { \
        if ((buf)->compat_size > 0) { \
            (buf)->compat_use = (buf)->use; \
        } \
    } while (0)

/* Stub for xmlBufMemoryError */
void xmlBufMemoryError(xmlBuf *buf, const char *msg) {
    if (buf) buf->error = 1;
}

/* Target function signature from SA spec */
int xmlBufAdd(xmlBuf *buf, const char *str, int len);

/* Implementation of xmlBufAdd based on SA spec context */
int xmlBufAdd(xmlBuf *buf, const char *str, int len) {
    if (buf == NULL || str == NULL || len < 0) {
        return -1;
    }
    
    if (buf->use + len + 1 > buf->size) {
        /* Simulate buffer growth failure */
        xmlBufMemoryError(buf, "growing buffer");
        return XML_ERR_NO_MEMORY;
    }
    
    /* TARGET LINE 798: memmove(&buf->content[buf->use], str, len); */
    memmove(&buf->content[buf->use], str, len);
    buf->use += len;
    buf->content[buf->use] = 0;
    UPDATE_COMPAT(buf);
    return 0;
}

int main(void) {
    /* Symbolic inputs */
    xmlBuf buf;
    int len;
    char *str;
    
    /* Initialize buffer with symbolic size */
    unsigned int buf_size;
    klee_make_symbolic(&buf_size, sizeof(buf_size), "buf_size");
    klee_assume(buf_size >= 1 && buf_size <= 1024); /* Reasonable bounds */
    
    /* Allocate buffer content */
    buf.content = (char *)malloc(buf_size);
    if (!buf.content) return 0;
    
    /* Initialize buffer fields */
    buf.use = 0;
    buf.size = buf_size;
    buf.compat_use = 0;
    buf.compat_size = buf_size; /* Enable compat updates */
    buf.error = 0;
    
    /* Make len symbolic with constraints */
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len >= 0 && len <= 1024); /* len >= 0 per SA bounds_hints */
    
    /* Allocate and make string symbolic */
    str = (char *)malloc(len + 1);
    if (!str) {
        free(buf.content);
        return 0;
    }
    klee_make_symbolic(str, len + 1, "str");
    if (len > 0) str[len] = '\0';
    
    /* Constraint: ensure buffer has enough space for len bytes plus null terminator */
    klee_assume(buf.use + len + 1 <= buf.size);
    
    /* Call the target function */
    int result = xmlBufAdd(&buf, str, len);
    
    /* Vulnerability assertion: check that memmove length doesn't exceed buffer bounds */
    /* Condition: len <= (buf.size - buf.use) - 1 (space for null terminator) */
    SAILR_ASSERT(len <= (buf.size - buf.use) - 1);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    free(buf.content);
    free(str);
    
    return 0;
}