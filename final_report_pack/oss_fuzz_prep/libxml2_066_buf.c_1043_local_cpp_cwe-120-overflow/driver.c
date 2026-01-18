#include <stddef.h>
#include <stdlib.h>
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
typedef struct _xmlBuffer xmlBuffer;
typedef struct _xmlBuf xmlBuf;
typedef enum {
    XML_BUFFER_ALLOC_IO
} xmlBufferAllocationScheme;
#define MAX_STR_LEN 1024

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

void* stub_xmlMalloc(size_t size) {
#ifdef __KLEE__
    return malloc(size);
#else
    return strict_alloc(size);
#endif
}
#define xmlMalloc stub_xmlMalloc

void* stub_xmlRealloc(void *ptr, size_t size) {
#ifdef __KLEE__
    return realloc(ptr, size);
#else
    /* For replay, we cannot safely realloc with guard pages; fallback to malloc/free */
    if (size == 0) { free(ptr); return NULL; }
    void *new = strict_alloc(size);
    if (new && ptr) {
        /* Copy old content up to original size? Not safe; but we just need to avoid crash */
        memcpy(new, ptr, size); /* assume size >= old size */
        free(ptr);
    }
    return new;
#endif
}
#define xmlRealloc stub_xmlRealloc

void stub_xmlFree(void *ptr) {
    free(ptr);
}
#define xmlFree stub_xmlFree

/* --- Embedded Functions --- */
#include <string.h>
#include <klee/klee.h>
#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* Helper to safely get string length up to max */
static size_t safe_strlen(const char *s, size_t max) {
    size_t i = 0;
    while (i < max && s[i] != '\0') i++;
    return i;
}

/* --- Harness --- */
int main(int argc, char **argv) {
    /* Create buffer */
    xmlBuffer *buf = xmlBufferCreate();
    if (buf == NULL) return 0;
    
    /* Allocate symbolic string buffer */
    char str_buf[MAX_STR_LEN];
    klee_make_symbolic(str_buf, sizeof(str_buf), "str_buf");
    /* Ensure null termination to prevent infinite strlen */
    str_buf[sizeof(str_buf) - 1] = '\0';
    
    /* Symbolic length */
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len > 0);
    if (len >= 256) return 0; /* Auto-fixed unsafe assume */  /* keep manageable */
    
    /* Filter short strings (strlen <= 64) */
    size_t actual_len = safe_strlen(str_buf, sizeof(str_buf));
    if (actual_len <= 64) {
        xmlBufferFree(buf);
        return 0;
    }
    /* Filter overly-long strings (strlen >= 128) */
    if (actual_len >= 128) {
        xmlBufferFree(buf);
        return 0;
    }
    
    /* Ensure the string has null at len position for safety */
    if (len < sizeof(str_buf)) {
        str_buf[len] = '\0';
    }
    
    /* Call the vulnerable function */
    int result = xmlBufferAddHead(buf, (const xmlChar*)str_buf, len);
    
    /* If we reach here without crash, bug didn't happen */
    
    
    
    /* Cleanup */
    xmlBufferFree(buf);
    return 0;
}