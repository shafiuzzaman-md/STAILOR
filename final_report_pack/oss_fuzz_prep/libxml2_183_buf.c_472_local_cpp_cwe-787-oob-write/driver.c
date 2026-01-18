#include <stdlib.h>

#ifndef BUG_ASSERT
#define BUG_ASSERT(cond) klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define REACH_ASSERT() klee_assert(0 && "REACH_ASSERT")
#endif

#include <stddef.h>
#include <stdint.h>
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <klee/klee.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* --- Global Constants --- */
#define INPUT_BUF_SIZE 4096

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

/* Stub xmlMalloc to always succeed */
#define xmlMalloc(size) malloc(size)

/* Stub xmlRealloc to always fail (return NULL) */
#define xmlRealloc(ptr, size) NULL

/* Stub xmlFree */
#define xmlFree(ptr) free(ptr)

/* --- Embedded Functions --- */
/* None needed */

/* --- Harness --- */
/* Forward declarations for libxml2 functions */
typedef struct _xmlBuf xmlBuf;
typedef xmlBuf *xmlBufPtr;
extern xmlBuf *xmlBufCreate(size_t size);
extern int xmlBufAdd(xmlBuf *buf, const unsigned char *str, size_t len);
extern void xmlBufFree(xmlBuf *buf);

int main(int argc, char **argv) {
    /* Create a small buffer to force overflow condition */
    xmlBuf *buf = xmlBufCreate(64); /* Small initial size */
    if (buf == NULL) {
        return 0;
    }

    /* Allocate concrete buffer for source string */
    unsigned char str[INPUT_BUF_SIZE];
    klee_make_symbolic(str, sizeof(str), "str");
    /* Ensure null termination to prevent OOB reads */
    str[sizeof(str) - 1] = '\0';

    /* Symbolic length */
    size_t len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len > 0);
    if (len >= 1024) return 0; /* Performance bound */

    /* Filter short strings for performance (not using klee_assume) */
    if (strlen((const char*)str) <= 64) {
        xmlBufFree(buf);
        return 0;
    }
    /* Filter overly-long strings for performance */
    if (strlen((const char*)str) >= 128) {
        xmlBufFree(buf);
        return 0;
    }

    /* Call the vulnerable function */
    int result = xmlBufAdd(buf, str, len);

    /* The oracle is placed via instrumentation in the target file */
    /* If execution reaches here without crashing, the bug didn't trigger */
    
    xmlBufFree(buf);
    return 0;
}