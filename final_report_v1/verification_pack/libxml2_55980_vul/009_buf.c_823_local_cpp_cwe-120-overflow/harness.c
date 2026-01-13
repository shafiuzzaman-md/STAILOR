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

/* --- Global Constants --- */
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

/* --- Stub Functions --- */
#ifdef __KLEE__
#include <klee/klee.h>
#else
#include <stdlib.h>
#include <string.h>
#endif

/* Macro redirection for external dependencies */
#define xmlMalloc stub_xmlMalloc
#define xmlMallocAtomic stub_xmlMallocAtomic
#define xmlRealloc stub_xmlRealloc
#define xmlFree stub_xmlFree
#define __xmlSimpleError stub___xmlSimpleError
#define xmlBufMemoryError stub_xmlBufMemoryError
#define xmlBufOverflowError stub_xmlBufOverflowError

static void* stub_xmlMalloc(size_t size) {
#ifdef __KLEE__
    return malloc(size);
#else
    return strict_alloc(size);
#endif
}

static void* stub_xmlMallocAtomic(size_t size) {
#ifdef __KLEE__
    return malloc(size);
#else
    return strict_alloc(size);
#endif
}

static void* stub_xmlRealloc(void *ptr, size_t size) {
#ifdef __KLEE__
    return realloc(ptr, size);
#else
    /* For replay, we cannot safely realloc with guard pages; just malloc */
    if (size == 0) { free(ptr); return NULL; }
    void *new = strict_alloc(size);
    if (new && ptr) {
        /* Copy old content up to minimum size */
        size_t old_size = malloc_usable_size(ptr); /* non-standard but available in glibc */
        if (old_size > size) old_size = size;
        memcpy(new, ptr, old_size);
        free(ptr);
    }
    return new;
#endif
}

static void stub_xmlFree(void *ptr) {
    free(ptr);
}

static void stub___xmlSimpleError(int domain, int code, void *node, const char *msg, const char *extra) {
    /* no-op */
}

static void stub_xmlBufMemoryError(void *buf, const char *extra) {
    /* no-op */
}

static void stub_xmlBufOverflowError(void *buf, const char *extra) {
    /* no-op */
}

/* --- Embedded Functions --- */
/* Helper to safely compute string length up to max */
static size_t safe_strlen(const char *s, size_t max) {
    size_t i = 0;
    while (i < max && s[i] != '\0') i++;
    return i;
}

/* --- Harness --- */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* Forward declarations for target functions */
typedef struct _xmlBuf xmlBuf;
typedef xmlBuf *xmlBufPtr;
typedef enum {
    XML_BUFFER_ALLOC_DOUBLEIT,
    XML_BUFFER_ALLOC_EXACT,
    XML_BUFFER_ALLOC_HYBRID,
    XML_BUFFER_ALLOC_IO,
    XML_BUFFER_ALLOC_BOUNDED
} xmlBufferAllocationScheme;
extern xmlBufPtr xmlBufCreate(void);
extern int xmlBufAdd(xmlBufPtr buf, const char *str, int len);
extern void xmlBufFree(xmlBufPtr buf);

extern unsigned int xmlDefaultBufferSize;

int main(int argc, char **argv) {
    xmlBufPtr buf = xmlBufCreate();
    if (!buf) return 0;
    
    /* Create source buffer with concrete size */
    char source_buf[4096];
    int len;
    
#ifdef __KLEE__
    klee_make_symbolic(source_buf, sizeof(source_buf), "source_buf");
    klee_make_symbolic(&len, sizeof(len), "len");
    
    /* Constrain len as per plan */
    klee_assume(len > 0);
    if (len >= 4096) return 0; /* Auto-fixed unsafe assume */
    /* Ensure null-termination at len-1 */
    if (len > 0 && len <= sizeof(source_buf)) {
        klee_assume(source_buf[len-1] == '\0');
    }
    
    /* Filter short strings (strlen <= 64) */
    size_t actual_len = safe_strlen(source_buf, sizeof(source_buf));
    if (actual_len <= 64) {
        xmlBufFree(buf);
        return 0;
    }
    
    /* Filter overly-long strings (strlen >= 128) for performance */
    if (actual_len >= 128) {
        xmlBufFree(buf);
        return 0;
    }
#else
    /* For replay, use values that should trigger overflow */
    memset(source_buf, 'A', sizeof(source_buf) - 1);
    source_buf[sizeof(source_buf) - 1] = '\0';
    len = 5000; /* large enough to overflow default buffer */
#endif
    
    /* Call the vulnerable function */
    int result = xmlBufAdd(buf, source_buf, len);
    
    /* Landing marker - if we reach here, no crash occurred */
    
    
    
    xmlBufFree(buf);
    return 0;
}