#include <stddef.h>
#include <stdint.h>
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>

#ifndef BUG_ASSERT
#define BUG_ASSERT(cond) klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define REACH_ASSERT() klee_assert(0 && "REACH_ASSERT")
#endif

/* --- Global Constants --- */
typedef unsigned char xmlChar;

/* --- Stub Functions --- */
#ifdef __KLEE__
#include <klee/klee.h>
#else
#include <stdlib.h>
#include <string.h>
#endif

/* Stub xmlBufferResize to fail (return 0) to force overflow path */
int stub_xmlBufferResize(void *buf, size_t size) {
    (void)buf; (void)size;
    return 0; /* Always fail to resize */
}
#define xmlBufferResize stub_xmlBufferResize

/* Stub xmlStrlen to return symbolic length (simplify) */
int stub_xmlStrlen(const xmlChar *str) {
    (void)str;
    static int stub_len = 0;
#ifdef __KLEE__
    klee_make_symbolic(&stub_len, sizeof(stub_len), "stub_xmlStrlen_ret");
    klee_assume(stub_len >= 0);
    if (stub_len >= 4096) return 0; /* safe fallback */
#endif
    return stub_len;
}
#define xmlStrlen stub_xmlStrlen

/* Stub xmlBufferCreate: allocate a minimal buffer with small size */
void* stub_xmlBufferCreate(void) {
    /* Use a concrete allocation; we don't need the full struct layout */
    void *buf = malloc(64); /* enough for a few fields */
    if (!buf) return NULL;
    /* Initialize fields needed for the overflow path */
    /* Assume buf->alloc != XML_BUFFER_ALLOC_IO */
    /* Set buf->size small, buf->use zero, buf->content non-NULL */
    /* We'll treat the buffer as an opaque pointer; the real library will handle it */
    return buf;
}
#define xmlBufferCreate stub_xmlBufferCreate

/* Stub xmlBufferFree */
void stub_xmlBufferFree(void *buf) {
    if (buf) free(buf);
}
#define xmlBufferFree stub_xmlBufferFree

/* --- Embedded Functions --- */
/* None needed */

/* --- Harness --- */
#include <klee/klee.h>
#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

extern int xmlBufferAddHead(void *buf, const xmlChar *str, int len);

int main(int argc, char **argv) {
    /* Create buffer with small size */
    void *buf = xmlBufferCreate();
    if (!buf) return 0;
    
    /* Symbolic length */
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len > 0);
    if (len >= 4096) return 0; /* Auto-fixed unsafe assume */
    
    /* Allocate concrete source buffer */
    xmlChar str[4096];
    klee_make_symbolic(str, sizeof(str), "str");
    str[sizeof(str)-1] = '\0'; /* Ensure null-terminated */
    
    /* Call the vulnerable function */
    int result = xmlBufferAddHead(buf, str, len);
    (void)result;
    
    /* The bug is a buffer overflow; we rely on crash detection */
     /* Safe landing - crash will be detected by system */
    
    
    xmlBufferFree(buf);
    return 0;
}