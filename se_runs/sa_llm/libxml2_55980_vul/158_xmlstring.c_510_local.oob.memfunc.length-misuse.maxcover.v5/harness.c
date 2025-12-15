#ifndef SAILR_ASSERT
#define SAILR_ASSERT(cond) klee_assert((cond) && "SAILR_VULN_ASSERT")
#endif

#include <limits.h>
#include <stdlib.h>
#include <string.h>
#include "klee/klee.h"

typedef unsigned char xmlChar;

xmlChar* xmlMalloc(size_t size) {
    return (xmlChar*)malloc(size);
}

void xmlErrMemory(void* ctx, const char* msg) {
    (void)ctx;
    (void)msg;
}

xmlChar* xmlStrndup(const xmlChar* str, int size) {
    if (str == NULL || size < 0) return NULL;
    xmlChar* ret = (xmlChar*)malloc(size + 1);
    if (ret == NULL) return NULL;
    memcpy(ret, str, size);
    ret[size] = 0;
    return ret;
}

xmlChar* xmlStrcat(xmlChar* cur, const xmlChar* add) {
    xmlChar* ret;
    int len, size;

    if (add == NULL) return(cur);
    if (cur == NULL) return(xmlStrndup(add, -1));

    len = strlen((const char*)add);
    size = strlen((const char*)cur);

    if ((size < 0) || (size > INT_MAX - len))
        return(NULL);
    ret = (xmlChar*)xmlMalloc((size_t)size + len + 1);
    if (ret == NULL) {
        xmlErrMemory(NULL, NULL);
        return(xmlStrndup(cur, size));
    }
    memcpy(ret, cur, size);
    memcpy(&ret[size], add, len);
    ret[size + len] = 0;
    return(ret);
}

int main(void) {
    xmlChar str1_buf[256];
    xmlChar str2_buf[256];
    int size, len;
    xmlChar* result;

    klee_make_symbolic(str1_buf, sizeof(str1_buf), "str1_buf");
    klee_make_symbolic(str2_buf, sizeof(str2_buf), "str2_buf");
    klee_make_symbolic(&size, sizeof(size), "size");
    klee_make_symbolic(&len, sizeof(len), "len");

    klee_assume(size >= 0 && size < 256);
    klee_assume(len >= 0 && len < 256);
    str1_buf[size] = 0;
    str2_buf[len] = 0;

    xmlChar* cur = xmlStrndup(str1_buf, size);
    if (cur == NULL) return 0;

    result = xmlStrcat(cur, str2_buf);

    if (result != NULL) {
        SAILR_ASSERT(size + len + 1 <= (int)xmlMalloc((size_t)size + len + 1));
        klee_assert(0 && "SAILR_REACH_ASSERT");
        free(result);
    }

    free(cur);
    return 0;
}