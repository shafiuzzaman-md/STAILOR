#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

/* Minimal definitions from libxml2 needed to compile */
typedef struct _xmlBuf xmlBuf;
struct _xmlBuf {
    char *content;
    unsigned int use;
    unsigned int size;
};

#define XML_ERR_NO_MEMORY 1
#define UPDATE_COMPAT(buf) /* empty */

/* Stub functions */
static void xmlBufMemoryError(xmlBuf *buf, const char *msg) { (void)buf; (void)msg; }
static int xmlBufResize(xmlBuf *buf, unsigned int size) {
    if (size <= buf->size) return 1;
    char *new_content = malloc(size);
    if (!new_content) return 0;
    if (buf->content && buf->use > 0) {
        memcpy(new_content, buf->content, buf->use);
    }
    free(buf->content);
    buf->content = new_content;
    buf->size = size;
    return 1;
}

/* Target function from buf.c:823 */
static int xmlBufAdd(xmlBuf *buf, const char *str, unsigned int len) {
    unsigned int needSize;
    
    if (buf == NULL || str == NULL) return -1;
    if (len == 0) return 0;
    
    if (buf->content == NULL) {
        if (!xmlBufResize(buf, len + 1)) {
            xmlBufMemoryError(buf, "growing buffer");
            return XML_ERR_NO_MEMORY;
        }
    } else if (buf->use + len + 1 > buf->size) {
        needSize = buf->use + len + 1;
        if (!xmlBufResize(buf, needSize)) {
            xmlBufMemoryError(buf, "growing buffer");
            return XML_ERR_NO_MEMORY;
        }
    }
    
    /* TARGET LINE 823 */
    memmove(&buf->content[buf->use], str, len);
    buf->use += len;
    buf->content[buf->use] = 0;
    UPDATE_COMPAT(buf);
    return 0;
}

int main(void) {
    xmlBuf buf;
    unsigned int buf_size, buf_use, str_len;
    char *str;
    
    /* Initialize buf symbolically */
    klee_make_symbolic(&buf_size, sizeof(buf_size), "buf_size");
    klee_make_symbolic(&buf_use, sizeof(buf_use), "buf_use");
    klee_make_symbolic(&str_len, sizeof(str_len), "str_len");
    
    /* Assume reasonable bounds to avoid overflow in size calculations */
    klee_assume(buf_size <= 1024 * 1024);  /* 1MB max */
    klee_assume(buf_use <= buf_size);
    klee_assume(str_len <= 1024 * 1024);   /* 1MB max */
    
    /* Allocate buffer content */
    buf.content = malloc(buf_size);
    buf.use = buf_use;
    buf.size = buf_size;
    
    /* Initialize content if needed */
    if (buf.content && buf.use > 0) {
        for (unsigned int i = 0; i < buf.use; i++) {
            buf.content[i] = klee_range(0, 256, "content_init");
        }
    }
    
    /* Allocate and initialize string symbolically */
    str = malloc(str_len + 1);
    if (str) {
        for (unsigned int i = 0; i < str_len; i++) {
            str[i] = klee_range(0, 256, "str_init");
        }
        str[str_len] = '\0';
    }
    
    /* Assume conditions to reach line 823 */
    klee_assume(buf.content != NULL);
    klee_assume(str != NULL);
    klee_assume(str_len > 0);
    klee_assume(buf.use + str_len + 1 <= buf.size);  /* Skip resize branch */
    
    /* Call target function */
    int result = xmlBufAdd(&buf, str, str_len);
    
    /* Vulnerability assertion: ensure memmove doesn't go OOB */
    /* Condition: buf->use + len <= buf->size (since content is buf->size bytes) */
    SAILR_ASSERT(buf.use + str_len <= buf.size);
    
    /* Reachability assertion */
    klee_assert(0 && "SAILR_REACH_ASSERT");
    
    /* Cleanup */
    free(buf.content);
    free(str);
    
    return result;
}