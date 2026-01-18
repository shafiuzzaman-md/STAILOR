#include <stddef.h>
#include <stdint.h>
#include <assert.h>
#include <stdbool.h>

#ifndef BUG_ASSERT
#define BUG_ASSERT(cond) klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define REACH_ASSERT() klee_assert(0 && "REACH_ASSERT")
#endif

#define xmlFree stub_xmlFree
#define xmlRealloc stub_xmlRealloc
/* --- Global Constants --- */
#define BUF_SIZE 64
#define STR_BUF_SIZE 1024

/* --- Stub Functions --- */
#ifndef __KLEE__
#include <sys/mman.h>
#include <unistd.h>
void* strict_alloc(size_t size) {
    size_t page_size = sysconf(_SC_PAGESIZE);
    size_t num_pages = (size + page_size - 1) / page_size + 1;
    size_t total_size = num_pages * page_size;
    char* base = mmap(NULL, total_size, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
    if (base == MAP_FAILED) return NULL;
    char* guard = base + (num_pages - 1) * page_size;
    mprotect(guard, page_size, PROT_NONE);
    return guard - size;
}
#endif

/* Stub xmlMalloc to use strict_alloc in replay mode */
#ifdef __KLEE__
void* stub_xmlMalloc(size_t size) {
    return malloc(size);
}
#else
#define xmlMalloc(size) strict_alloc(size)
#endif

/* Stub xmlRealloc */
#ifdef __KLEE__
void* stub_xmlRealloc(void *ptr, size_t size) {
    return realloc(ptr, size);
}
#else
void* stub_xmlRealloc(void *ptr, size_t size) {
    /* Simple implementation for replay */
    void *new_ptr = strict_alloc(size);
    if (new_ptr && ptr) {
        /* Copy old content - we don't know original size, so copy conservatively */
        memcpy(new_ptr, ptr, size);
        munmap(ptr, 0); /* Not exactly correct but works for our purposes */
    }
    return new_ptr;
}
#endif

/* Stub xmlFree */
#ifdef __KLEE__
void stub_xmlFree(void *ptr) {
    free(ptr);
}
#else
void stub_xmlFree(void *ptr) {
    if (ptr) {
        munmap(ptr, 0);
    }
}
#endif

/* --- Embedded Functions --- */
/* Helper to filter strings based on length */
static int filter_string(const char *str) {
    size_t len = strlen(str);
    if (len <= 64) return 0;
    if (len >= 128) return 0;
    return 1;
}

/* --- Harness --- */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <klee/klee.h>

/* Forward declarations for libxml2 functions */
typedef struct _xmlBuf xmlBuf;
typedef xmlBuf *xmlBufPtr;
typedef unsigned char xmlChar;

extern xmlBuf *xmlBufCreate(size_t size);
extern int xmlBufAdd(xmlBuf *buf, const xmlChar *str, size_t len);

extern void xmlBufFree(xmlBuf *buf);

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

int main(int argc, char **argv) {
    /* Create a small buffer to make overflow easier */
    xmlBuf *buf = xmlBufCreate(BUF_SIZE);
    if (buf == NULL) {
        return 0; /* Allocation failed, skip */
    }
    
    /* Allocate concrete buffer for source string */
    char str_buf[STR_BUF_SIZE];
    
    /* Make the string content symbolic */
    klee_make_symbolic(str_buf, sizeof(str_buf), "str_buf");
    
    /* Ensure null termination to prevent infinite strlen */
    str_buf[sizeof(str_buf) - 1] = '\0';
    
    /* Filter strings based on length as per assumptions */
    if (!filter_string(str_buf)) {
        xmlBufFree(buf);
        return 0;
    }
    
    /* Get the actual length of the string */
    size_t actual_len = strlen(str_buf);
    
    /* Create symbolic length parameter */
    size_t len;
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Constrain len to be > 0 and less than actual string length */
    klee_assume(len > 0);
    klee_assume(len <= actual_len);
    
    /* Ensure len is large enough to potentially overflow the buffer */
    klee_assume(len > BUF_SIZE);
    
    /* Call the vulnerable function */
    int result = xmlBufAdd(buf, (const xmlChar *)str_buf, len);
    
    /* Post-call landing marker */
    
    
    
    xmlBufFree(buf);
    return 0;
}