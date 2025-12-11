#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

typedef struct _xmlBuf xmlBuf;
typedef xmlBuf *xmlBufPtr;

struct _xmlBuf {
    xmlChar *content;
    unsigned int use;
    unsigned int size;
    unsigned int compat_use;
    unsigned int compat_size;
    int error;
};

#define UPDATE_COMPAT(buf) \
    do { \
        if ((buf) != NULL) { \
            (buf)->compat_use = (buf)->use; \
            (buf)->compat_size = (buf)->size; \
        } \
    } while (0)

int xmlBufAdd(xmlBufPtr buf, const xmlChar *str, int len);

int main(void) {
    xmlBuf buf_struct;
    xmlBufPtr buf = &buf_struct;
    
    unsigned int buf_size;
    unsigned int buf_use;
    int len;
    
    klee_make_symbolic(&buf_size, sizeof(buf_size), "buf_size");
    klee_make_symbolic(&buf_use, sizeof(buf_use), "buf_use");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    klee_assume(buf_size > 0);
    klee_assume(buf_use <= buf_size);
    klee_assume(len >= 0);
    
    buf->size = buf_size;
    buf->use = buf_use;
    buf->content = (xmlChar*)malloc(buf_size * sizeof(xmlChar));
    if (buf->content == NULL) {
        return 0;
    }
    
    buf->error = 0;
    
    int result = xmlBufAdd(buf, NULL, len);
    
    if (result == len) {
        SAILR_ASSERT(buf->use <= buf->size);
        klee_assert(0 && "SAILR_REACH_ASSERT");
    }
    
    free(buf->content);
    return 0;
}

int xmlBufAdd(xmlBufPtr buf, const xmlChar *str, int len) {
    if (buf == NULL || buf->error) return -1;
    if (len < 0) return -1;
    if (len == 0) return 0;
    
    if (str == NULL) {
        if (buf->use + len + 1 < buf->size) {
            buf->use += len;
            buf->content[buf->use] = 0;
        } else {
            unsigned int start_buf = buf->size;
            buf->size += len + 100;
            xmlChar* new_content = (xmlChar*)realloc(buf->content, buf->size);
            if (new_content == NULL) {
                buf->error = 1;
                return -1;
            }
            buf->content = new_content;
            buf->use += len;
            buf->content[buf->use] = 0;
            buf->size += start_buf;
        }
    } else {
        memmove(buf->content, &buf->content[len], buf->use);
        buf->content[buf->use] = 0;
    }
    UPDATE_COMPAT(buf);
    return len;
}