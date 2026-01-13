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
typedef struct _xmlBuffer xmlBuffer;
typedef xmlBuffer *xmlBufferPtr;
struct _xmlBuffer {
    xmlChar *content;
    unsigned int use;
    unsigned int size;
    unsigned int alloc;
    xmlChar *contentIO;
};

#define XML_BUFFER_ALLOC_IMMUTABLE 0
#define XML_BUFFER_ALLOC_IO 1
#define XML_BUFFER_ALLOC_DOUBLEIT 2
#define XML_BUFFER_ALLOC_EXACT 3
#define XML_BUFFER_ALLOC_HYBRID 4

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

/* Stub xmlBufferResize to always fail (so resize check is bypassed) */
int stub_xmlBufferResize(xmlBufferPtr buf, unsigned int size) {
    return 0; /* fail */
}
#define xmlBufferResize stub_xmlBufferResize

/* Stub xmlStrlen to avoid symbolic explosion */
int stub_xmlStrlen(const xmlChar *str) {
    int len = 0;
    while (str && str[len]) len++;
    return len;
}
#define xmlStrlen stub_xmlStrlen

/* Stub xmlTreeErrMemory to do nothing */
void stub_xmlTreeErrMemory(const char *extra) {}
#define xmlTreeErrMemory stub_xmlTreeErrMemory

/* Stub xmlBufferFree to avoid linker collision */
void stub_xmlBufferFree(xmlBufferPtr buf) {
    if (buf) {
        if (buf->content && buf->alloc != XML_BUFFER_ALLOC_IMMUTABLE) {
#ifndef __KLEE__
            free(buf->content);
#else
            klee_free(buf->content);
#endif
        }
#ifndef __KLEE__
        free(buf);
#else
        klee_free(buf);
#endif
    }
}
#define xmlBufferFree stub_xmlBufferFree

/* Stub xmlBufferCreate to create a small buffer */
xmlBufferPtr stub_xmlBufferCreate(void) {
    xmlBufferPtr buf;
#ifndef __KLEE__
    buf = (xmlBufferPtr)malloc(sizeof(xmlBuffer));
#else
    buf = (xmlBufferPtr)klee_malloc(sizeof(xmlBuffer));
#endif
    if (!buf) return NULL;
    buf->use = 0;
    buf->size = 64; /* small capacity to trigger overflow */
    buf->alloc = XML_BUFFER_ALLOC_EXACT;
    buf->contentIO = NULL;
#ifndef __KLEE__
    buf->content = (xmlChar*)malloc(buf->size);
#else
    buf->content = (xmlChar*)klee_malloc(buf->size);
#endif
    if (!buf->content) {
#ifndef __KLEE__
        free(buf);
#else
        klee_free(buf);
#endif
        return NULL;
    }
    buf->content[0] = 0;
    return buf;
}
#define xmlBufferCreate stub_xmlBufferCreate

/* --- Embedded Functions --- */
/* None needed */

/* --- Harness --- */
#include <klee/klee.h>
#include <stdlib.h>
#include <string.h>

#ifndef BUG_ASSERT
#define klee_assert(!(cond) && "BUG_ASSERT")
#endif
#ifndef REACH_ASSERT
#define klee_assert(0 && "REACH_ASSERT")
#endif

/* External declaration of the real xmlBufferAdd */
extern int xmlBufferAdd(xmlBufferPtr buf, const xmlChar *str, int len);

int main(int argc, char **argv) {
    /* Create a small buffer */
    xmlBufferPtr buf = xmlBufferCreate();
    if (!buf) return 0;
    
    /* Allocate concrete input buffer */
    char str_data[256];
    klee_make_symbolic(str_data, sizeof(str_data), "str_data");
    /* Ensure null termination to avoid infinite strlen */
    str_data[sizeof(str_data)-1] = 0;
    
    /* Filter string length: 64 < strlen < 128 */
    int actual_len = 0;
    while (str_data[actual_len] && actual_len < sizeof(str_data)) actual_len++;
    if (actual_len <= 64) {
        xmlBufferFree(buf);
        return 0;
    }
    if (actual_len >= 128) {
        xmlBufferFree(buf);
        return 0;
    }
    
    /* Symbolic len parameter */
    int len;
    klee_make_symbolic(&len, sizeof(len), "len");
    klee_assume(len > 0);
    if (len >= 4096) return 0; /* Auto-fixed unsafe assume */
    /* Critical constraint: len >= buf->size - buf->use (bypass resize) */
    klee_assume(len >= buf->size - buf->use);
    
    /* Call vulnerable function */
    int ret = xmlBufferAdd(buf, (const xmlChar*)str_data, len);
    
    /* If we reach here, overflow didn't crash - but we still want to mark reachability */
    
    
    xmlBufferFree(buf);
    return 0;
}